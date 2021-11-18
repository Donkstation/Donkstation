/datum/techweb/specialized/autounlocking/biogenerator/New()
	spawn(10) 						//Waiting 1 second to get sent the part tier.
		switch(bio_gen_part_tier) 	//This delay does cause a one second "blank screen" on the biogenerator, but goes away.
			if(1)
				design_autounlock_categories = list("initial")
			if(2)
				design_autounlock_categories = list("initial", "tier_two")
			if(3)
				design_autounlock_categories = list("initial", "tier_two", "tier_three")
			if(4)
				design_autounlock_categories = list("initial", "tier_two", "tier_three", "tier_four")
		..()
		autounlock()
