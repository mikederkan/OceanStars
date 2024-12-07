/datum/job/station_mechanic
	title = JOB_STATION_MECHANIC
	description = "Dummy role" //as this is a temporary, dummy role, just change the shit that names it. sort the rest out later
	department_head = list(JOB_CHIEF_ENGINEER)
	faction = FACTION_STATION
	total_positions = 0
	spawn_positions = 0
	supervisors = SUPERVISOR_CE
	exp_requirements = 60
	exp_required_type = EXP_TYPE_CREW
	exp_granted_type = EXP_TYPE_CREW
	config_tag = "STATION_MECHANIC"

	outfit = /datum/outfit/job/engineer //change this to new outfit, obviously
	plasmaman_outfit = /datum/outfit/plasmaman/engineering

	paycheck = PAYCHECK_CREW
	paycheck_department = ACCOUNT_ENG

	liver_traits = list(TRAIT_ENGINEER_METABOLISM)

	display_order = JOB_DISPLAY_ORDER_STATION_MECHANIC
	bounty_types = CIV_JOB_ENG
	departments_list = list(
		/datum/job_department/engineering,
		)

	family_heirlooms = list(/obj/item/clothing/head/utility/hardhat, /obj/item/screwdriver, /obj/item/wrench, /obj/item/weldingtool, /obj/item/crowbar, /obj/item/wirecutters)

	mail_goodies = list(
		/obj/item/storage/box/lights/mixed = 20,
		/obj/item/lightreplacer = 10,
		/obj/item/spess_knife = 10,
		/obj/item/holosign_creator/engineering = 8,
		/obj/item/wrench/bolter = 8,
		/obj/item/clothing/head/utility/hardhat/red/upgraded = 1
	)
	rpg_title = "Technomancer" //remove this, eventually, but until then hahah
	job_flags = STATION_JOB_FLAGS


/datum/outfit/job/mechanic
	name = "Station Mechanic (Dummy)"
	jobtype = /datum/job/station_mechanic //I'M NAKEEEEEEED
