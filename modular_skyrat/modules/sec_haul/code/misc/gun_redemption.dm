//Both of these are defunk but still exist for archival purpose incase someone want to re-visit them later, or as references


/obj/item/choice_beacon/ntc
	name = "gunset beacon"
	desc = "A single use beacon to deliver a gunset of your choice. Please only call this in your office"
	company_source = "Trappiste Fabriek Company"
	company_message = span_bold("Supply Pod incoming please stand by")

/obj/item/choice_beacon/ntc/generate_display_names()
	var/static/list/selectable_gun_types = list(
		"Takbok" = /obj/item/storage/toolbox/guncase/skyrat/pistol/trappiste_small_case/takbok,
		"Skild" = /obj/item/storage/toolbox/guncase/skyrat/pistol/trappiste_small_case/skild
	)

	return selectable_gun_types

//Station Central Command Staff

/obj/item/choice_beacon/station_magistrate
	name = "nanotrasen dignitaries weapon beacon"
	desc = "A single use beacon to deliver a weapon of your choice. Please only call this in your office"
	company_source = "Romulus Armoury"
	company_message = span_bold("Supply Pod incoming please stand by")

/obj/item/choice_beacon/station_magistrate/generate_display_names()
	var/static/list/selectable_gun_types = list(
		".457 Romulus Revolver" = /obj/item/storage/toolbox/guncase/skyrat/hos_revolver,
		".460 Rowland Magnum Pistol" = /obj/item/storage/toolbox/guncase/skyrat/pistol/m45a5
	)

	return selectable_gun_types

//Security Sidearm

/obj/item/choice_beacon/security_pistol
	name = "sidearm weapon beacon"
	desc = "A single use beacon to deliver a weapon of your choice. Please only call this in your office"
	company_source = "Romulus Armoury"
	company_message = span_bold("Supply Pod incoming please stand by")

/obj/item/choice_beacon/security_pistol/generate_display_names()
	var/static/list/selectable_gun_types = list(
		"Standard 9x25mm Mk2 Pistol" = /obj/item/storage/toolbox/guncase/skyrat/pistol/trappiste_small_case/nt_glock,
		"Police Special 10mm Auto Revolver" = /obj/item/storage/toolbox/guncase/skyrat/pistol/trappiste_small_case/nt_revolver
	)

	return selectable_gun_types
