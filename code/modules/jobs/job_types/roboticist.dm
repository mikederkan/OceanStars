/datum/job/roboticist
	title = JOB_ROBOTICIST
	description = "Build cyborgs and maintain them. Try to remind medical that you're actually a lot better at treating synthetic \
	crew members than them. Cry because you're missing all your job content."
	department_head = list(JOB_CHIEF_ENGINEER)
	faction = FACTION_STATION
	total_positions = 2
	spawn_positions = 2
	supervisors = SUPERVISOR_CE
	exp_requirements = 60
	exp_required_type = EXP_TYPE_CREW
	exp_granted_type = EXP_TYPE_CREW
	bounty_types = CIV_JOB_ROBO
	config_tag = "ROBOTICIST"

	outfit = /datum/outfit/job/roboticist
	plasmaman_outfit = /datum/outfit/plasmaman/robotics
	departments_list = list(
		/datum/job_department/engineering,
		)

	paycheck = PAYCHECK_CREW
	paycheck_department = ACCOUNT_ENG

	mind_traits = list(TRAIT_KNOW_ROBO_WIRES) //death to skillchips, just a fix until skill system is added.

	display_order = JOB_DISPLAY_ORDER_ROBOTICIST

	mail_goodies = list(
		/obj/item/storage/box/flashes = 20,
		/obj/item/stack/sheet/iron/twenty = 15,
		/obj/item/modular_computer/laptop = 5,
		/obj/item/mmi/posibrain/sphere = 5, //w-what is that
	)

	family_heirlooms = list(/obj/item/toy/plush/pkplush)
	rpg_title = "Technomancer" //you aint raising shit
	job_flags = STATION_JOB_FLAGS


/datum/job/roboticist/New()
	. = ..()
	family_heirlooms += subtypesof(/obj/item/toy/mecha)

/datum/outfit/job/roboticist
	name = "Roboticist"
	jobtype = /datum/job/roboticist //remember to repath, skyrat overwrites this

	id_trim = /datum/id_trim/job/roboticist
	uniform = /obj/item/clothing/under/rank/rnd/roboticist
	suit = /obj/item/clothing/suit/toggle/labcoat/roboticist
	belt = /obj/item/storage/belt/utility/full
	ears = /obj/item/radio/headset/headset_eng
	l_pocket = /obj/item/modular_computer/pda/roboticist
	glasses = /obj/item/clothing/glasses/hud/diagnostic //remember to add robo glasses
	gloves = /obj/item/clothing/gloves/color/black

	backpack = /obj/item/storage/backpack/industrial
	satchel = /obj/item/storage/backpack/satchel/eng
	duffelbag = /obj/item/storage/backpack/duffelbag/engineering

	pda_slot = ITEM_SLOT_LPOCKET

/datum/outfit/job/roboticist/mod
	name = "Roboticist (MODsuit)"
	suit_store = /obj/item/tank/internals/oxygen
	back = /obj/item/mod/control/pre_equipped/standard
	suit = null
	mask = /obj/item/clothing/mask/breath
	internals_slot = ITEM_SLOT_SUITSTORE
