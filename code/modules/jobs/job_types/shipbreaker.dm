/datum/job/shipbreaker
	title = JOB_SHIPBREAKER
	description = "Dummy role" //as this is a temporary, dummy role, just change the shit that names it. sort the rest out later
	department_head = list(JOB_QUARTERMASTER)
	faction = FACTION_STATION
	total_positions = 0
	spawn_positions = 0
	supervisors = SUPERVISOR_QM
	exp_granted_type = EXP_TYPE_CREW
	config_tag = "SHIPBREAKER"

	outfit = /datum/outfit/job/cargo_tech //change this to new outfit, obviously
	plasmaman_outfit = /datum/outfit/plasmaman/cargo

	paycheck = PAYCHECK_CREW
	paycheck_department = ACCOUNT_CAR
	display_order = JOB_DISPLAY_ORDER_SHIPBREAKER
	bounty_types = CIV_JOB_RANDOM
	departments_list = list(
		/datum/job_department/cargo,
		)

	family_heirlooms = list(/obj/item/clipboard)

	mail_goodies = list(
		/obj/item/pizzabox = 10,
		/obj/item/stack/sheet/mineral/gold = 5,
		/obj/item/stack/sheet/mineral/uranium = 4,
		/obj/item/stack/sheet/mineral/diamond = 3,
		/obj/item/gun/ballistic/rifle/boltaction = 1,
		/obj/item/gun/ballistic/automatic/wt550 = 1,
	)
	rpg_title = "Carpenter" //remove this, eventually, but until then hahah

	allow_bureaucratic_error = FALSE
	job_flags = STATION_JOB_FLAGS | JOB_CANNOT_OPEN_SLOTS


/datum/outfit/job/cargo_tech
	name = "Cargo Technician"
	jobtype = /datum/job/cargo_technician
