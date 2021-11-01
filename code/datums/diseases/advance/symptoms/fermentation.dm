/datum/symptom/fermentation
	name = "Endogenous Ethanol Fermentation"
	desc = "This symptom causes the gut bacteria of the infected to continually produce ethanol, causing a near constant state of intoxication."
	stealth = -2 				//Drunken crew are very obvious
	resistance = -3 			//Alcohol kills viruses, so it wouldn't be a very resistant virus
	stage_speed = -4 			//Can you REALLY get anything done when drunk?
	transmission = 1 			//Drunks get around. However, no new symptoms can EVER be 3+ due to that allowing for more airborne options
	level = 6 					//Same level as common healing symptoms as well as a number of equally powerful symptoms
	severity = 0 				//Initially starts off not getting crew drunk enough to have any effect besides a waddle
	symptom_delay_min = 5 
	symptom_delay_max = 8
	var/ethanol_power = 3.35 	//Level of drunkenness that will be maintained, scales with Transmission & Stage Speed. This also ensures a harmful virus cannot be stealthed.
	var/drunken_healing = FALSE //Grants Drunken Resilience with a threshold
	var/has_light_drinker = FALSE //storage for existing traits
	var/has_drunk_healing = FALSE //^^^^^
	var/datum/component/is_waddling = FALSE		//For the waddle trait.
	threshold_desc = "<b>Transmission & Stage Speed:</b> The maximum amount of alcohol in the system scales based off the transmission and stage speed stat.<br>\
					<b>Resistance 8:</b> The symptom now heals the infected while drunk and makes light drinkers more capable of holding their liquor. Has no effect on those that are already resilient to alcohol."

/datum/symptom/fermentation/severityset(datum/disease/advance/A)
	ethanol_power = (A.transmission * A.stage_rate + 3)
	severity = 0
	if(ethanol_power <= 0)
		ethanol_power = 3
	if(ethanol_power >= 81)
		ethanol_power = 81	
	if(ethanol_power >= 10)
		severity += round(ethanol_power / 10) //This gives this disease a severity range of -3 to 5, from just giving a trait to being blacked out drunk at all times
	if(A.resistance >= 8)
		severity -= 3
		
datum/symptom/fermentation/Start(datum/disease/advance/A)
	if(!..())
		return
	if(A.resistance >= 8)
		drunken_healing = TRUE
	ethanol_power = (A.transmission * A.stage_rate + 3.35)
	if(ethanol_power <= 0)
		ethanol_power = 3
	if(ethanol_power >= 81)
		ethanol_power = 81	

datum/symptom/fermentation/Activate(datum/disease/advance/A)
	if(!..())
		return
	var/mob/living/M = A.affected_mob
	var/mob/living/carbon/C = M
	
	if(A.stage >= 2)
		if(prob(10))
			to_chat(M, "<span class='notice'>[pick("I see it on the table, gotta be a black label...", "Drink, drank, drunk...", "So pour me a glass of the pegleg potion, drink to the end of time...", "We drank the tavern dry, devoured all the meats...", "We'll dance and sing and fight until the early mornin' light...", "You hear a distant calling and you know it's meant for you...", "So I'll leave ye sitting at the bar and face the wind and rain...", "I first produced me pistols and then produced me rapier...", "But the devil take the women, for they never can be easy...", "Red solo cup, I fill you up...", "We are here to drink your beer and steal your rum at the point of a gun...", "Soon may the wellerman come to bring us sugar and tea and rum...", "Leave her, Johnny, leave her...", "And all the harm I've ever done, alas it was to none but me...", "So fill to me the parting glass and drink a health whate’er befalls...", "Oh ho, the rattlin' bog, the bog down in the valley-o...")]</span>")

	if(A.stage >= 3)
		if(is_waddling == FALSE)
			is_waddling = M.AddComponent(/datum/component/waddling)
			to_chat(M, "<span class='warning'>You feel like you can't walk straight!</span>")
		if((ishuman(M)) && (drunken_healing == TRUE))
			var/mob/living/carbon/human/H = A.affected_mob	
			drunken_healing = FALSE //Only run once.
			if(HAS_TRAIT(H, TRAIT_LIGHT_DRINKER))
				has_light_drinker = TRUE
				REMOVE_TRAIT(H, TRAIT_LIGHT_DRINKER, DISEASE_TRAIT)
			if(HAS_TRAIT(H, TRAIT_DRUNK_HEALING))
				has_drunk_healing = TRUE
				return
			ADD_TRAIT(H, TRAIT_DRUNK_HEALING, DISEASE_TRAIT)
				
	if(A.stage == 5)
		if(prob(20))
			M.emote(pick("clap", "laugh", "dance", "cry", "mumble", "cross", "chuckle", "flip", "grin", "grimace", "sigh", "smug", "sway", "spin"))
		C.drunkenness += 5.0
		if(C.drunkenness >= ethanol_power) //Caps drunkenness to prevent danger UNLESS the disease has a high power
			C.drunkenness = ethanol_power							  //Drops the current drunkenness to the cap


datum/symptom/fermentation/End(datum/disease/advance/A) //Restore traits as needed.
	. = ..()
	var/mob/living/M = A.affected_mob
	QDEL_NULL(is_waddling)
	if(has_light_drinker == TRUE)
		REMOVE_TRAIT(M, TRAIT_DRUNK_HEALING, DISEASE_TRAIT)
		ADD_TRAIT(M, TRAIT_LIGHT_DRINKER, DISEASE_TRAIT)
		return
	if(has_drunk_healing == FALSE)
		REMOVE_TRAIT(M, TRAIT_DRUNK_HEALING, DISEASE_TRAIT)