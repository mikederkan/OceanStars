GLOBAL_LIST_EMPTY(cargo_intercepts)
/obj/machinery/cargo_accumulator
	name = "cargo accumulator"
	desc = "A device that stores shipments from Centcom."
	icon = 'icons/obj/machines/telecomms.dmi'
	icon_state = "blackbox"

	resistance_flags = INDESTRUCTIBLE
	density = TRUE

	/// All non-crates contained within
	var/list/non_crates = list()
	/// All access-locked crates contained within
	var/list/crates = list()
	/// A nested list of access_string : list_of_crates
	var/list/crates_by_one_access = list()
	/// Crates without an access lock.
	var/list/crates_unrestricted = list()
	/// Privately purchased crates
	var/list/crates_private = list()

/obj/machinery/cargo_accumulator/Initialize(mapload)
	. = ..()
	GLOB.cargo_intercepts += src

/obj/machinery/cargo_accumulator/Destroy(force)
	GLOB.cargo_intercepts -= src
	non_crates.Cut()
	crates.Cut()
	crates_by_one_access.Cut()
	crates_unrestricted.Cut()
	crates_private.Cut()
	return ..()

/obj/machinery/cargo_accumulator/Exited(atom/movable/gone, direction)
	. = ..()

	if(!istype(gone, /obj/structure/closet/crate))
		non_crates -= gone
		return

	crates_unrestricted -= gone
	crates_private -= gone
	crates -= gone

	var/obj/structure/closet/crate/crate = gone
	for(var/access in crate.req_one_access)
		crates_by_one_access[access] -= crate

/obj/machinery/cargo_accumulator/attackby(obj/item/weapon, mob/user, params)
	. = ..()
	if(.)
		return

	var/list/access_list = weapon.GetAccess()
	var/datum/bank_account/account
	if(!length(access_list))
		if(!isidcard(weapon))
			return

	if(isidcard(weapon))
		var/obj/item/card/id/id = weapon
		account = id.registered_account

	user.changeNext_move(CLICK_CD_RAPID)

	var/asset = icon2html(src, viewers(src))
	var/atom/movable/found_atom = fetch_cargo_for_access(access_list, account)

	if(!found_atom)
		playsound(loc, 'sound/machines/buzz-two.ogg', 50)
		visible_message(
			span_warning("[asset] buzzes."),
			blind_message = span_hear("[asset] buzzes."),
		)
		return TRUE

	withdraw_cargo(found_atom)
	return TRUE

/// Finds and returns an object, using the given access list as a filter.
/obj/machinery/cargo_accumulator/proc/fetch_cargo_for_access(list/access_list, datum/bank_account/account)
	// First, check private purchase.
	if(account)
		for(var/obj/structure/closet/crate/secure/owned/crate as anything in crates_private)
			if(crate.buyer_account == account)
				return crate

	// Second, check by any access
	for(var/access in access_list)
		if(!length(crates_by_one_access[access]))
			continue

		return pick_n_take(crates_by_one_access[access])

	// Third, check specific access
	for(var/obj/structure/closet/crate/crate as anything in crates)
		if(!length(crate.req_access))
			continue

		if(length((crate.req_access & access_list)) == length(crate.req_access))
			return crate

	// Fourth, grab a random unrestricted crate.
	if(length(crates_unrestricted) && (ACCESS_CARGO in access_list))
		return pick_n_take(crates_unrestricted)

	// Finally, grab a random non-crate
	if(length(non_crates) && (ACCESS_CARGO in access_list))
		return pick_n_take(non_crates)

/obj/machinery/cargo_accumulator/proc/withdraw_cargo(atom/movable/to_withdraw)
	var/asset = icon2html(src, viewers(src))

	to_withdraw.forceMove(get_step(src, pick(GLOB.cardinals)))
	playsound(loc, 'sound/machines/chime.ogg', 50)
	visible_message(
		span_warning("[asset] beeps, dispensing [to_withdraw]."),
		blind_message = span_hear("[asset] beeps."),
	)

#define ASSERT_LIST(list_dest) if(!islist(list_dest)) { list_dest = list() }

/// Take on a load of cargo after it's been spawned.
/obj/machinery/cargo_accumulator/proc/intercept_cargo(list/cargo)
	for(var/atom/movable/thing as anything in cargo)
		thing.forceMove(src)

		if(!istype(thing, /obj/structure/closet/crate))
			non_crates += thing
			continue

		if(istype(thing, /obj/structure/closet/crate/secure/owned))
			crates_private += thing
			continue

		var/obj/structure/closet/crate/crate = thing
		if(!length(crate.req_access) && !length(crate.req_one_access))
			crates_unrestricted += crate
			continue

		crates += crate

		for(var/access in crate.req_one_access)
			if(!islist(crates_by_one_access[access]))
				crates_by_one_access[access] = list()
			crates_by_one_access[access] += crate

#undef ASSERT_LIST
