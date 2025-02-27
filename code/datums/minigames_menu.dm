/datum/minigames_menu
	var/mob/dead/observer/owner

/datum/minigames_menu/New(mob/dead/observer/new_owner)
	if(!istype(new_owner))
		qdel(src)
	owner = new_owner

/datum/minigames_menu/Destroy()
	owner = null
	return ..()

/datum/minigames_menu/ui_state(mob/user)
	return GLOB.observer_state

/datum/minigames_menu/ui_interact(mob/user, datum/tgui/ui)
	ui = SStgui.try_update_ui(user, src, ui)
	if(!ui)
		ui = new(user, src, "MinigamesMenu")
		ui.open()

/datum/minigames_menu/ui_act(action, params, datum/tgui/ui)
	. = ..()
	if(.)
		return

	switch(action)
		if("ctf")
			ui.close()
			ctf()
			return TRUE
		if("basketball")
			ui.close()
			basketball()
			return TRUE

/datum/minigames_menu/proc/ctf()
	var/datum/ctf_panel/ctf_panel
	if(!ctf_panel)
		ctf_panel = new(src)
	ctf_panel.ui_interact(usr)

/datum/minigames_menu/proc/basketball()
	var/datum/basketball_controller/game = GLOB.basketball_game
	if(!game)
		game = create_basketball_game()
	game.ui_interact(usr)
