/datum/objective/auto_complete
	name="auto complete"
	///This stores the line number of the objective
	var/objective_ID
	///This stores if it either took from the general list or a antagonist one
	var/objective_type


/datum/objective/auto_complete/New(text, antag_type = null)
	make_random_objective(antag_type)
	..()

/datum/objective/auto_complete/proc/make_random_objective(antag_type = null, force_random_check = null)
	var/objective
	var/list/objective_list
	var/objective_num
	objective_type = "general"
	if((prob(50) || force_random_check) && antag_type)
		objective_list = world.file2list("donkstation/code/modules/datum/objective/strings/antag/[antag_type].txt")
		objective_type = antag_type
	objective_list ||= world.file2list("donkstation/code/modules/datum/objective/strings/antag/general.txt")
	objective_num = rand(1, objective_list.len)
	objective = objective_list[objective_num]
	explanation_text = "[objective] <I>This objective auto-completes, so just have fun!</I>"
	objective_ID = objective_num

#define GETTING_BAND_BACK_TOGETHER 2

/datum/objective/auto_complete/update_explanation_text()
	. = ..()
	if(objective_type == "BloodBrother")
		switch(objective_ID)
			if(GETTING_BAND_BACK_TOGETHER)
				give_special_equipment(list(/obj/item/storage/box/syndie_kit/band))

/datum/objective/auto_complete/admin_edit(mob/admin)
	var/list/antag_list = list(
		"traitor",
		"wizard",
		"changeling",
		"BloodBrother",
		"general"
	)
	var/antag = input(admin, "Which objective list do you want to pull from?", "Antag lists") as anything in antag_list
	var/random_check
	if(antag == "general")
		antag = null
	if(antag)
		random_check = input(admin, "Do you wish to force it take from that specific list?", "Random check") in list("Yes", "No")
	make_random_objective(antag, random_check == "No" ? null : random_check)
	update_explanation_text()

#undef GETTING_BAND_BACK_TOGETHER
