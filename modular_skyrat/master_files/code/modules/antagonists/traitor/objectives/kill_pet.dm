// 	This is a modular hook on the kill_pet.dm, the `possible_heads` variable needs to be upkept according to the upstream file, or they will not occur.
/datum/traitor_objective/kill_pet
	possible_heads = list(
		JOB_HEAD_OF_PERSONNEL = list(
			/mob/living/basic/pet/dog/corgi/ian,
			/mob/living/basic/pet/dog/corgi/puppy/ian
		),
		JOB_CAPTAIN = /mob/living/basic/pet/fox/renault,
		JOB_CHIEF_MEDICAL_OFFICER = /mob/living/basic/pet/cat/runtime,
		JOB_CHIEF_ENGINEER = /mob/living/basic/parrot/poly,
		JOB_QUARTERMASTER = list(
			/mob/living/basic/sloth/citrus,
			/mob/living/basic/sloth/paperwork,
		),
		// Non-heads like the warden, these are automatically medium-risk at minimum
		// They are also the only two modular additions so far
		JOB_STATION_ENGINEER = /mob/living/basic/pet/poppy,
	)

	// This variable is for the emag E-N objective. The obj details are below the next block
	var/obj/item/card/emag/one_shot/one_shot_emag

// 	Objective overwrites
/datum/traitor_objective/kill_pet/generate_objective(datum/mind/generating_for, list/possible_duplicates)
	. = ..()
	if(!.)
		return FALSE

	// Dust Poppy the safety inspector
	if(istype(target_pet, /mob/living/basic/pet/poppy))
		name = "Dust the engineering department's esteemed safety inspector and beloved pet, Poppy"
		description = "A couple of troublemakers in the engineering department have spilled the milk, make them and their colleagues pay for the consequences by throwing Poppy the Safety Inspector into the supermatter engine "
		telecrystal_reward = 4

		// Cleaning up the original success_signals which are `list(COMSIG_QDELETING, COMSIG_LIVING_DEATH)`
		for(var/datum/component/traitor_objective_register/old_objective as anything in GetComponents(/datum/component/traitor_objective_register))
			if(old_objective.target == target_pet)
				qdel(old_objective)
		// Adding our own signal component, targeting `target_pet`
		AddComponent(/datum/component/traitor_objective_register, target_pet, \
			succeed_signals = list(COMSIG_QDELETING)) // Until dusting gets its own component, this has to make do
