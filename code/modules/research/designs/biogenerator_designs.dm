///////////////////////////////////
///////Biogenerator Designs ///////
///////////////////////////////////

//Donkstation changes:
//Adds 4 tiers to the biogenerator designs

/datum/design/milk
	name = "10 Milk"
	id = "milk"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass= 20)
	make_reagents = list(/datum/reagent/consumable/milk = 10)
	category = list("initial","Food")

/datum/design/cream
	name = "10 Cream"
	id = "cream"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass= 30)
	make_reagents = list(/datum/reagent/consumable/cream = 10)
	category = list("initial","Food")

/datum/design/milk_carton
	name = "Milk Carton"
	id = "milk_carton"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass= 100)
	build_path = /obj/item/reagent_containers/food/condiment/milk
	category = list("tier_two","Food")

/datum/design/cream_carton
	name = "Cream Carton"
	id = "cream_carton"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass= 300)
	build_path = /obj/item/reagent_containers/food/drinks/bottle/cream
	category = list("tier_two","Food")

/datum/design/black_pepper
	name = "10u Black Pepper"
	id = "black_pepper"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass= 25)
	make_reagents = list(/datum/reagent/consumable/blackpepper = 10)
	category = list("initial","Food")

/datum/design/pepper_mill
	name = "Pepper Mill"
	id = "pepper_mill"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass= 50)
	build_path = /obj/item/reagent_containers/food/condiment/peppermill
	make_reagents = list()
	category = list("tier_two","Food")

/datum/design/enzyme
	name = "10u Universal Enzyme"
	id = "enzyme"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass= 30)
	make_reagents = list(/datum/reagent/consumable/enzyme = 10)
	category = list("tier_two","Food")

/datum/design/pepper_mill
	name = "Universal Enzyme Bottle"
	id = "enzyme_bottle"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass= 50)
	build_path = /obj/item/reagent_containers/food/condiment/enzyme
	make_reagents = list()
	category = list("tier_three","Food")

/datum/design/flour_sack
	name = "Flour Sack"
	id = "flour_sack"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass= 150)
	build_path = /obj/item/reagent_containers/food/condiment/flour
	category = list("tier_two","Food")
/datum/design/sugar_sack
	name = "Sugar Sack"
	id = "sugar_sack"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass= 200)
	build_path = /obj/item/reagent_containers/food/condiment/sugar
	category = list("tier_two","Food")

/datum/design/donk_pocket
	name = "Plain Donk Pocket"
	id = "donk_pocket"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass= 200)
	build_path = /obj/item/reagent_containers/food/snacks/donkpocket
	category = list("tier_two","Food")

/datum/design/monkey_cube
	name = "Monkey Cube"
	id = "mcube"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass= 250)
	build_path = /obj/item/reagent_containers/food/snacks/monkeycube
	category = list("tier_three", "Food")

/datum/design/strange_seeds
	name = "Pack of Strange Seeds"
	id = "strange_seed"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass = 7500) //Unlocked only at Tier 3/4 parts now. Cost of 2500/1875 biomass.
	build_path = /obj/item/seeds/random
	category = list("tier_three", "Food")

/datum/design/ez_nut
	name = "E-Z Nutrient"
	id = "ez_nut"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass= 10)
	build_path = /obj/item/reagent_containers/glass/bottle/nutrient/ez
	category = list("initial","Botany Chemicals")

/datum/design/l4z_nut
	name = "Left 4 Zed"
	id = "l4z_nut"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass= 20)
	build_path = /obj/item/reagent_containers/glass/bottle/nutrient/l4z
	category = list("tier_two","Botany Chemicals")

/datum/design/rh_nut
	name = "Robust Harvest"
	id = "rh_nut"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass= 25)
	build_path = /obj/item/reagent_containers/glass/bottle/nutrient/rh
	category = list("tier_three","Botany Chemicals")

/datum/design/weed_killer
	name = "Weed Killer"
	id = "weed_killer"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass= 50)
	build_path = /obj/item/reagent_containers/glass/bottle/killer/weedkiller
	category = list("tier_two","Botany Chemicals")

/datum/design/pest_spray
	name = "Pest Killer"
	id = "pest_spray"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass= 50)
	build_path = /obj/item/reagent_containers/glass/bottle/killer/pestkiller
	category = list("tier_two","Botany Chemicals")

/datum/design/botany_bottle
	name = "Empty Bottle"
	id = "botany_bottle"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass= 5)
	build_path = /obj/item/reagent_containers/glass/bottle/nutrient/empty
	category = list("initial", "Botany Chemicals")

/datum/design/medical_spray
	name = "Empty Medical Spray"
	id = "medical_spray"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass = 10000)
	build_path = /obj/item/reagent_containers/medspray
	category = list("tier_three","Botany Chemicals")

/datum/design/spray_bottle
	name = "Empty Spray Bottle"
	id = "spray_bottle"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass = 10000)
	build_path = /obj/item/reagent_containers/spray
	category = list("tier_three","Botany Chemicals")

/datum/design/paper_bin
	name = "Paper Bin"
	id = "paper"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass= 100)
	build_path = /obj/item/paper_bin
	category = list("initial","Organic Materials")

/datum/design/paper_bin_colored
	name = "Construction Paper Bin"
	id = "paper_colored"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass= 100)
	build_path = /obj/item/paper_bin/construction
	category = list("initial","Organic Materials")

/datum/design/cloth
	name = "Roll of Cloth"
	id = "cloth"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass= 50)
	build_path = /obj/item/stack/sheet/cotton/cloth
	category = list("tier_three","Organic Materials")

/datum/design/cardboard
	name = "Sheet of Cardboard"
	id = "cardboard"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass= 25)
	build_path = /obj/item/stack/sheet/cardboard
	category = list("tier_two","Organic Materials")

/datum/design/leather
	name = "Sheet of Leather"
	id = "leather"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass= 150)
	build_path = /obj/item/stack/sheet/leather
	category = list("tier_three","Organic Materials")

/datum/design/bible
	name = "Bible"
	id = "bible"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass= 4000)
	build_path = /obj/item/storage/book/bible
	category = list("tier_three","Organic Materials")

/datum/design/toolbelt
	name = "Tool Belt"
	id = "toolbelt"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass= 300)
	build_path = /obj/item/storage/belt/utility
	category = list("tier_three","Clothing")

/datum/design/secbelt
	name = "Security Belt"
	id = "secbelt"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass= 300)
	build_path = /obj/item/storage/belt/security
	category = list("tier_three","Clothing")

/datum/design/medbelt
	name = "Medical Belt"
	id = "medbel"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass= 300)
	build_path = /obj/item/storage/belt/medical
	category = list("tier_three","Clothing")

/datum/design/janibelt
	name = "Janitorial Belt"
	id = "janibelt"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass= 300)
	build_path = /obj/item/storage/belt/janitor
	category = list("tier_three","Clothing")

/datum/design/s_holster
	name = "Shoulder Holster"
	id = "s_holster"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass= 400)
	build_path = /obj/item/clothing/accessory/holster
	category = list("tier_three","Clothing")

/datum/design/wallet
	name = "Wallet"
	id = "wallet"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass = 20000)
	build_path = /obj/item/storage/wallet
	category = list("tier_three","Clothing")

/datum/design/rice_hat
	name = "Rice Hat"
	id = "rice_hat"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass= 300)
	build_path = /obj/item/clothing/head/rice_hat
	category = list("initial","Clothing")

/datum/design/carton_soy_milk
	name = "Soy Milk Carton"
	id = "soy_milk_carton"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass = 100)
	build_path = /obj/item/reagent_containers/food/condiment/soymilk
	category = list("tier_two","Food")

//Tier four rewards
//Remember, everything is 1/4 the price at this tier. Go high.

/datum/design/armor_vest
	name = "Light Armor Vest"
	id = "armor_vest"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass = 40000)
	build_path = /obj/item/clothing/suit/armor/vest
	category = list("tier_four","Clothing")

/datum/design/mime_mask
	name = "Mime Mask"
	id = "mime_mask"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass = 40000)
	build_path = /obj/item/clothing/mask/gas/mime
	category = list("tier_four","Clothing")

/datum/design/clown_mask
	name = "Clown Mask"
	id = "clown_mask"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass = 40000)
	build_path = /obj/item/clothing/mask/gas/clown_hat
	category = list("tier_four","Clothing")

/datum/design/clown_shoes
	name = "Clown Shoes"
	id = "clown_shoes"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass = 40000)
	build_path = /obj/item/clothing/shoes/clown_shoes
	category = list("tier_four","Clothing")

/datum/design/EVA_helmet
	name = "Space Helmet"
	id = "space_helmet"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass = 40000)
	build_path = /obj/item/clothing/head/helmet/space/eva
	category = list("tier_four","Clothing")

/datum/design/EVA_suit
	name = "Space Suit"
	id = "space_suit"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass = 40000)
	build_path = /obj/item/clothing/suit/space/eva
	category = list("tier_four","Clothing")

/datum/design/tactical_vest
	name = "Snacktical Vest"
	id = "snack_vest"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass = 40000)
	build_path = /obj/item/storage/belt/military/snack
	category = list("tier_four","Clothing")

/datum/design/champion_belt
	name = "Championship Belt"
	id = "champ_belt"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass = 40000)
	build_path = /obj/item/storage/belt/champion
	category = list("tier_four","Clothing")

/datum/design/chef_hat
	name = "Chef Hat"
	id = "chef_hat"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass = 40000)
	build_path = /obj/item/clothing/head/chefhat
	category = list("tier_four","Clothing")

/datum/design/fanny_pack
	name = "Fannypack"
	id = "fanny_pack"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass = 40000)
	build_path = /obj/item/storage/belt/fannypack
	category = list("tier_four","Clothing")


/datum/design/five_plastic
	name = "Plastic Sheets"
	id = "plastic_sheets"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass = 4000)
	build_path = /obj/item/stack/sheet/plastic
	category = list("tier_four","Organic Materials")
