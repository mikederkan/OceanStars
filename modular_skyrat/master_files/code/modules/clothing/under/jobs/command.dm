/obj/item/clothing/under/rank/captain
	worn_icon_digi = 'modular_skyrat/master_files/icons/mob/clothing/under/command_digi.dmi' //Anything that was in TG's captain.dmi, should be in our command_digi.dmi
	//NOTE - TG uses "captain.dmi"; because we have a few non-captain items going in here for ease of access, this will just be "command.dmi"

/obj/item/clothing/under/rank/captain/skyrat
	icon = 'modular_skyrat/master_files/icons/obj/clothing/under/command.dmi'
	worn_icon = 'modular_skyrat/master_files/icons/mob/clothing/under/command.dmi'

/*
*	CAPTAIN
*/

/obj/item/clothing/under/rank/captain/skyrat/kilt
	name = "captain's kilt"
	desc = "A midnight blue kilt, padded with nano-kevlar and adorned with gold and a tartan sash."
	icon_state = "capkilt"

/obj/item/clothing/under/rank/captain/skyrat/shipdress
	name = "captain's dress"
	desc = "A blue dress adorned with a gold trim. Perfect for a formal dinner."
	icon_state = "solgov_dress"
	can_adjust = FALSE

/obj/item/clothing/under/rank/captain/skyrat/imperial
	name = "captain's naval jumpsuit"
	desc = "A white naval suit adorned with golden epaulets and a rank badge denoting a Captain. There are two ways to destroy a person, kill him, or ruin his reputation."
	//Rank pins of the Grand Admiral, not a Captain.
	icon_state = "impcap"
	can_adjust = FALSE

//Donor item for Gandalf - all donors have access
/obj/item/clothing/under/rank/captain/skyrat/black
	name = "captain's black suit"
	desc = "A very sleek, albeit outdated, naval captain's uniform for those who think they're commanding a battleship."
	icon_state = "captainblacksuit"
	can_adjust = FALSE

/*
*	UNASSIGNED (Any head of staff)
*/

/obj/item/clothing/under/rank/captain/skyrat/utility
	name = "command utility uniform"
	desc = "A utility uniform worn by Station Command."
	icon_state = "util_com"
	can_adjust = FALSE

/obj/item/clothing/under/rank/captain/skyrat/utility/syndicate
	armor_type = /datum/armor/clothing_under/utility_syndicate
	has_sensor = NO_SENSORS

/obj/item/clothing/under/rank/captain/skyrat/imperial/generic
	desc = "A grey naval suit with a rank badge denoting an Officer. Doesn't protect against blaster fire."
	name = "grey officer's naval jumpsuit"
	icon_state = "impcom"

/obj/item/clothing/under/rank/captain/skyrat/imperial/generic/pants
	desc = "A grey naval suit over black pants, with a rank badge denoting an Officer. Doesn't protect against blaster fire."
	name = "officer's naval jumpsuit"
	icon_state = "impcom_pants"

/obj/item/clothing/under/rank/captain/skyrat/imperial/generic/grey
	desc = "A dark grey naval suit with a rank badge denoting an Officer. Doesn't protect against blaster fire."
	name = "dark grey officer's naval jumpsuit"
	icon_state = "impcom_dark"

/obj/item/clothing/under/rank/captain/skyrat/imperial/generic/red
	desc = "A red naval suit with a rank badge denoting an Officer. Doesn't protect against blaster fire."
	name = "red officer's naval jumpsuit"
	icon_state = "impcom_red"

/*
*	MISC
*/

/obj/item/clothing/under/rank/captain/skyrat/pilot
	name = "shuttle pilot's jumpsuit"
	desc = "It's a blue jumpsuit with some silver markings denoting the wearer as a certified pilot."
	icon_state = "pilot"
	can_adjust = FALSE

/obj/item/clothing/under/rank/captain/skyrat/pilot/skirt
	name = "shuttle pilot's jumpskirt"
	desc = "It's a blue jumpskirt with some silver markings denoting the wearer as a certified pilot."
	icon_state = "pilot_skirt"
	body_parts_covered = CHEST|GROIN|ARMS
	dying_key = DYE_REGISTRY_JUMPSKIRT
	female_sprite_flags = FEMALE_UNIFORM_TOP_ONLY
	supports_variations_flags = CLOTHING_DIGITIGRADE_VARIATION_NO_NEW_ICON
