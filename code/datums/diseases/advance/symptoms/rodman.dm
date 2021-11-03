/datum/symptom/rodman_syndrome
	name = "Rodman Syndrome"
	desc = "This virus causes rapid growth of previously dormant neural connections, causing a large urge to grunt in a primal way. It is believed that this is an evolution of the failed experimental ALZ-112 virus."
	stealth = -2 
	resistance = -2
	stage_speed = 2 
	transmission = -4 	//Prevents airborne spread, on-contact is the highest possible
	level = 0 			//Base symptom is very 'clown tier'
	severity = 1 		//Non-harmful, but annoying
	symptom_delay_min = 8 
	symptom_delay_max = 10
	var/restore_mind = FALSE
	var/increase_volume = FALSE
	var/awaken_monkey = FALSE
	var/is_monkey = FALSE
	threshold_desc = "<b>Resistance 10:</b> The symptom now causes restoration of neural tissue in more traditional areas of the brain.<br>\
					<b>Transmission 8:</b> The symptom grows in intensity, causing the afflicted to begin grunting and screeching more often and with higher volume."
					
/datum/symptom/rodman_syndrome/severityset(datum/disease/advance/A)
	. = ..()
	if(A.transmission >= 8)
		severity += 1 //Becomes MORE annoying, still 'harmless'
	if(A.resistance >= 10)
		severity -= 2 //Becomes a healing symptom at this point.
	if((A.stealth >= 2) && (A.stage_rate >= 12))
		severity += 3 //Ghost role creation turns this into a more risky symptom, but not directly deadly. Likely that the resistance threshold is hit too, so it should end up as a 2 severity total.

/datum/symptom/rodman_syndrome/Start(datum/disease/advance/A)
	if(!..())
		return
	if(A.resistance >= 10)
		restore_mind = TRUE
	if(A.transmission >= 8)
		increase_volume = TRUE
	if((A.stealth >= 2) && (A.stage_rate >= 12))
		awaken_monkey = TRUE
	if(!ishuman(A.affected_mob)) //Important to know if they are a monkey from the very start.
		is_monkey = TRUE
			
		
/datum/symptom/rodman_syndrome/Activate(datum/disease/advance/A)
	if(!..())
		return
	var/mob/living/M = A.affected_mob

	switch(A.stage)
		if(2, 3)
			if(prob(20))
				to_chat(M, "<span class='notice'>[pick(
				"You feel a need to return to the past.",
				"You wonder if the ceilings are high enough for trees.",
				"A desire to screech comes over you.", 
				"Bananas sound good right about now.",
				"Ook?",
				"Perhaps those apes were right...",
				"Your thoughts seem to be clearing up.")]</span>")
		if(4, 5)
			if(is_monkey == FALSE)
				if(restore_mind == TRUE)
					M.adjustOrganLoss(ORGAN_SLOT_BRAIN, -3) //Only heals brain damage at a power equal to Mind Restoration but does nothing for traumas.
					if(prob(5))
						to_chat(M, "<span class='notice'>[pick(
						"Your thoughts seem to be clearing up.",
						"Your brain feels great.",
						"The fog in your mind is clearing up.")]</span>")
					return
				if((increase_volume == TRUE) && (prob(35)))
					M.say( pick( list(
					"Ook!!", 
					"Ook.", 
					"Ooh-ooh!!",
					"Ah-ah!!",
					"Eek-eek!!",
					"Hoo hoo!!", 
					"SCREE!!") )) //More volume means shouted messages now
					playsound(M.loc, pick( list('sound/creatures/monkey/monkey_screech_1.ogg','sound/creatures/monkey/monkey_screech_2.ogg','sound/creatures/monkey/monkey_screech_3.ogg','sound/creatures/monkey/monkey_screech_4.ogg','sound/creatures/monkey/monkey_screech_5.ogg','sound/creatures/monkey/monkey_screech_6.ogg','sound/creatures/monkey/monkey_screech_7.ogg')), 100, 1)
					return
				if(prob(20))
					M.say( pick( list(
					"Ook!",
					"Ook.",
					"Eek", 
					"Oop?", 
					"Aak-eek.", 
					"Chee."
					) )) //Return to monke.
					playsound(M.loc, pick( list('sound/creatures/monkey/monkey_screech_1.ogg','sound/creatures/monkey/monkey_screech_2.ogg','sound/creatures/monkey/monkey_screech_3.ogg','sound/creatures/monkey/monkey_screech_4.ogg','sound/creatures/monkey/monkey_screech_5.ogg','sound/creatures/monkey/monkey_screech_6.ogg','sound/creatures/monkey/monkey_screech_7.ogg')), 50, 1)
			if((!ishuman(M)) && (awaken_monkey == TRUE) && (is_monkey == TRUE)) //Confirm they were a monkey from the start, currently a monkey and that the threshold is hit.
				awaken_monkey = FALSE // Only one attempt at this, to minimize spam.
				if((!M.mind) && (isliving(M))) //Confirm they are mindless and alive
					//Give them a name that isn't just Monkey(420)
					M.name = pick(world.file2list("strings/random_monkey_names.txt"))
					if(M.name == "Tim the Sorcerous" || "Ook Operative" || "Sherlok Monke" || "Monkie Holms" || "Monkey-anda Jones" || "Ook") 
					//Checking for ANY of the unique modifier names in one go, rather than a set of many 'if' statements				
						if(M.name == "Tim the Sorcerous") //Wizard Hat
							var/obj/item/clothing/C
							C = new /obj/item/clothing/head/wizard(M)
							ADD_TRAIT(C, TRAIT_NODROP, DISEASE_TRAIT)
							M.equip_to_slot_or_del(C, ITEM_SLOT_HEAD)
						if(M.name == "Ook Operative") //Fake nuke op space helmet
							var/obj/item/clothing/C
							C = new /obj/item/clothing/head/syndicatefake(M)
							ADD_TRAIT(C, TRAIT_NODROP, DISEASE_TRAIT)
							M.equip_to_slot_or_del(C, ITEM_SLOT_HEAD)
						if(M.name == ("Sherlok Monke" || "Monkie Holms" || "Monkey-anda Jones")) //Detective fedora
							var/obj/item/clothing/C
							C = new /obj/item/clothing/head/fedora/det_hat(M)
							ADD_TRAIT(C, TRAIT_NODROP, DISEASE_TRAIT)
							M.equip_to_slot_or_del(C, ITEM_SLOT_HEAD)
						if(M.name == "Ook") //Unique hat for Ook
							var/obj/item/clothing/C
							C = new /obj/item/clothing/mask/ookmask(M)
							ADD_TRAIT(C, TRAIT_NODROP, DISEASE_TRAIT)
							M.equip_to_slot_or_del(C, ITEM_SLOT_MASK)
					M.grant_language(/datum/language/common, TRUE, TRUE, DISEASE_TRAIT)
					M.set_playable() //Set the monkey as playable
					M.mind_initialize()
					M.add_memory("You are an awakened monkey, fully sapient and capable of many things. While not a pacifist, you should only fight in self-defense as you are thankful that the crew here have awakened you.")
					M.ai_controller = FALSE //Remove AI controller
					M.comp_lookup = FALSE //Remove limb AI, mostly
					M.visible_message("<span class='warning'>[M] suddenly looks more aware and alert!</span>") //Inform nearby people

			else
				return