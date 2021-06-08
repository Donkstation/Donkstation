/datum/species/teshari
	// Them things from that one Starbound mod
	name = "Teshari"
	id = "teshari"
	limbs_id = "fluffliz"
	say_mod = "chirps"

	offset_features = list(OFFSET_UNIFORM = list(1,-3), OFFSET_ID = list(1,-3), OFFSET_GLOVES = list(1,-3), OFFSET_GLASSES = list(1,-5), OFFSET_EARS = list(1,-4), OFFSET_SHOES = list(1,-1), OFFSET_S_STORE = list(-3,-4), OFFSET_FACEMASK = list(1,-6), OFFSET_HEAD = list(1,-5), OFFSET_FACE = list(0,0), OFFSET_BELT = list(1,-3), OFFSET_BACK = list(1,-4), OFFSET_SUIT = list(0.5,-4), OFFSET_NECK = list(1,-3))

	default_color = "001144"
	species_traits = list(MUTCOLORS,NOEYESPRITES,HAIR)
	inherent_biotypes = list(MOB_ORGANIC, MOB_HUMANOID, MOB_REPTILE)
	mutant_bodyparts = list("teshari_tail", "teshari_tailfeather", "teshari_footfeather", "teshari_handfeather", "teshari_modeye")
	mutanttail = /obj/item/organ/tail/teshari
	coldmod = 0.67
	heatmod = 1.5
	default_features = list("mcolor" = "0F0", "teshari_tail" = "Tail", "teshari_tailfeather" = "None", "teshari_footfeather" = "None", "teshari_handfeather" = "None", "teshari_modeye" = "Normal")
	changesource_flags = MIRROR_BADMIN | WABBAJACK | MIRROR_PRIDE | MIRROR_MAGIC | RACE_SWAP | ERT_SPAWN
	attack_verb = "slash"
	attack_sound = 'sound/weapons/slash.ogg'
	miss_sound = 'sound/weapons/slashmiss.ogg'
	meat = /obj/item/reagent_containers/food/snacks/meat/slab/human/mutant/lizard
	skinned_type = /obj/item/stack/sheet/animalhide/lizard
	exotic_bloodtype = "L"
	disliked_food = GRAIN | DAIRY
	liked_food = GROSS | MEAT
	deathsound = 'sound/voice/lizard/deathsound.ogg'
	species_language_holder = /datum/language_holder/teshari

	speedmod = -0.1

/datum/species/teshari/random_name(gender,unique,lastname)
	if(unique)
		return random_unique_lizard_name(gender)

	var/randname = lizard_name(gender)

	if(lastname)
		randname += " [lastname]"

	return randname

