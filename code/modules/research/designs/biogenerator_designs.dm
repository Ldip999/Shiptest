///////////////////////////////////
///////Biogenerator Designs ///////
///////////////////////////////////

/datum/design/milk
	name = "10u Milk"
	id = "milk"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass= 20)
	make_reagents = list(/datum/reagent/consumable/milk = 10)
	category = list("initial","Food")

/datum/design/soymilk
	name = "10u Soy Milk"
	id = "soymilk"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass= 20)
	make_reagents = list(/datum/reagent/consumable/soymilk = 10)
	category = list("initial","Food")

/datum/design/ethanol
	name = "10u Ethanol"
	id = "ethanol"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass= 30)
	make_reagents = list(/datum/reagent/consumable/ethanol = 10)
	category = list("initial","Food")

/datum/design/cream
	name = "10u Cream"
	id = "cream"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass= 30)
	make_reagents = list(/datum/reagent/consumable/cream = 10)
	category = list("initial","Food")

/datum/design/black_pepper
	name = "10u Black Pepper"
	id = "black_pepper"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass= 25)
	make_reagents = list(/datum/reagent/consumable/blackpepper = 10)
	category = list("initial","Food")

/datum/design/enzyme
	name = "10u Universal Enzyme"
	id = "enzyme"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass= 30)
	make_reagents = list(/datum/reagent/consumable/enzyme = 10)
	category = list("initial","Food")

/datum/design/flour
	name = "10u Flour"
	id = "flour_sack"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass= 30)
	make_reagents = list(/datum/reagent/consumable/flour = 10)
	category = list("initial","Food")

/datum/design/monkey_cube
	name = "Monkey Cube"
	id = "mcube"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass= 250)
	build_path = /obj/item/food/monkeycube
	category = list("initial","Food")

/datum/design/ez_nut   //easy nut :)
	name = "25u E-Z Nutrient"
	id = "ez_nut"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass= 10)
	make_reagents = list(/datum/reagent/plantnutriment/eznutriment = 25)
	category = list("initial","Botany Chemicals")

/datum/design/l4z_nut
	name = "25u Left 4 Zed"
	id = "l4z_nut"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass= 20)
	make_reagents = list(/datum/reagent/plantnutriment/left4zednutriment = 25)
	category = list("initial","Botany Chemicals")

/datum/design/rh_nut
	name = "25u Robust Harvest"
	id = "rh_nut"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass= 25)
	make_reagents = list(/datum/reagent/plantnutriment/robustharvestnutriment = 25)
	category = list("initial","Botany Chemicals")

/datum/design/end_gro
	name = "25u Enduro Grow"
	id = "end_gro"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass= 25)
	make_reagents = list(/datum/reagent/plantnutriment/endurogrow = 25)
	category = list("initial","Botany Chemicals")

/datum/design/liq_earth
	name = "25u Liquid Earthquake"
	id = "liq_earth"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass= 25)
	make_reagents = list(/datum/reagent/plantnutriment/liquidearthquake = 25)
	category = list("initial","Botany Chemicals")

/datum/design/weed_killer
	name = "25u Weed Killer"
	id = "weed_killer"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass= 50)
	make_reagents = list(/datum/reagent/toxin/plantbgone/weedkiller = 25)
	category = list("initial","Botany Chemicals")

/datum/design/pest_spray
	name = "25u Pest Killer"
	id = "pest_spray"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass= 50)
	make_reagents = list(/datum/reagent/toxin/pestkiller = 25)
	category = list("initial","Botany Chemicals")

/datum/design/cloth
	name = "Roll of Cloth"
	id = "cloth"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass= 50)
	build_path = /obj/item/stack/sheet/cotton/cloth
	category = list("initial","Organic Materials")

/datum/design/cardboard
	name = "Sheet of Cardboard"
	id = "cardboard"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass= 25)
	build_path = /obj/item/stack/sheet/cardboard
	category = list("initial","Organic Materials")

/datum/design/leather
	name = "Sheet of Leather"
	id = "leather"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass= 150)
	build_path = /obj/item/stack/sheet/leather
	category = list("initial","Organic Materials")

/datum/design/secbelt
	name = "Security Belt"
	id = "secbelt"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass= 300)
	build_path = /obj/item/storage/belt/security
	category = list("initial","Organic Materials")

/datum/design/medbelt
	name = "Medical Belt"
	id = "medbel"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass= 300)
	build_path = /obj/item/storage/belt/medical
	category = list("initial","Organic Materials")

/datum/design/janibelt
	name = "Janitorial Belt"
	id = "janibelt"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass= 300)
	build_path = /obj/item/storage/belt/janitor
	category = list("initial","Organic Materials")

/datum/design/plantbelt
	name = "Botanical Belt"
	id = "plantbelt"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass= 300)
	build_path = /obj/item/storage/belt/plant
	category = list("initial","Organic Materials")

/datum/design/s_holster
	name = "Shoulder Holster"
	id = "s_holster"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass= 400)
	build_path = /obj/item/clothing/accessory/holster
	category = list("initial","Organic Materials")

/datum/design/rngplant
	name = "SYNTHESIS"
	id = "rngplant"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass= 2000)
	build_path = /obj/effect/spawner/random/food_or_drink/seed
	category = list("initial","LIFESEED_2.0")

/datum/design/genesis
	name = "GENESIS"
	id = "genesis"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass= 2500)
	make_reagents = list(/datum/reagent/genesis = 25)
	category = list("initial","LIFESEED_2.0")

/datum/design/strangeseed
	name = "{DATA_CORRUPT}"
	id = "strangeseed"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass= 5000)
	build_path = /obj/item/seeds/random
	category = list("initial","LIFESEED_2.0")

/datum/design/seaweed_sheet
	name = "Seaweed Sheet"
	id = "seaweedsheet"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass = 60)
	build_path = /obj/item/food/grown/seaweed
	category = list("initial","Food")

/datum/design/veganchili_ration
	name = "Vegan Chili Ration"
	id = "vegan_chili_ration"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass = 10)
	build_path = /obj/item/storage/ration/vegan_chili
	category = list("initial","Ration")

	
/datum/design/shredded_beef
	name = "Shredded Beef Ration"
	id = "shredded_beef_ration"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass = 10)
	build_path = /obj/item/storage/ration/shredded_beef
	category = list("initial","Ration")

/datum/design/pork_spaghetti
	name = "Pork Spaghetti Ration"
	id = "pork_spaghetti_ration"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass = 10)
	build_path = /obj/item/storage/ration/pork_spaghetti
	category = list("initial","Ration")

/datum/design/fried_fish
	name = "Fried Fish Ration"
	id = "fried_fish_ration"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass = 10)
	build_path = /obj/item/storage/ration/fried_fish
	category = list("initial","Ration")

/datum/design/beef_strips
	name = "Beef Strips Ration"
	id = "beef_strips_ration"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass = 10)
	build_path = /obj/item/storage/ration/beef_strips
	category = list("initial","Ration")

/datum/design/beef_strips
	name = "Beef Strips Ration"
	id = "beef_strips_ration"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass = 10)
	build_path = /obj/item/storage/ration/beef_strips
	category = list("initial","Ration")

/datum/design/chili_macaroni
	name = "Chili Macaroni Ration"
	id = "chili_macaroni_ration"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass = 10)
	build_path = /obj/item/storage/ration/chili_macaroni
	category = list("initial","Ration")

/datum/design/chicken_wings_hot_sauce
	name = "Chicken Wings Hot Sauce Ration"
	id = "chicken_wings_hot_sauce_ration"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass = 10)
	build_path = /obj/item/storage/ration/chicken_wings_hot_sauce
	category = list("initial","Ration")

/datum/design/fish_stew
	name = "Fish Stew Ration"
	id = "fish_stew_ration"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass = 10)
	build_path = /obj/item/storage/ration/fish_stew
	category = list("initial","Ration")

/datum/design/lemon_pepper_chicken
	name = "Lemon Pepper Chicken Ration"
	id = "lemon_pepper_chicken_ration"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass = 10)
	build_path = /obj/item/storage/ration/lemon_pepper_chicken
	category = list("initial","Ration")

/datum/design/sausage_peppers_onions
	name = "Sausage Peppers Onions Ration"
	id = "sausage_peppers_onions_ration"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass = 10)
	build_path = /obj/item/storage/ration/sausage_peppers_onions
	category = list("initial","Ration")

/datum/design/pork_dumplings_chili_sauce
	name = "Pork Dumplings Chili Sauce Ration"
	id = "pork_dumplings_chili_sauce_ration"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass = 10)
	build_path = /obj/item/storage/ration/pork_dumplings_chili_sauce
	category = list("initial","Ration")

/datum/design/battered_fish_sticks
	name = "Battered Fish Sticks Ration"
	id = "battered_fish_sticks_ration"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass = 10)
	build_path = /obj/item/storage/ration/battered_fish_sticks
	category = list("initial","Ration")
	
/datum/design/assorted_salted_offal
	name = "Assorted Salted Offal Ration"
	id = "assorted_salted_offal_ration"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass = 10)
	build_path = /obj/item/storage/ration/assorted_salted_offal
	category = list("initial","Ration")

/datum/design/maple_pork_sausage_patty
	name = "Maple Pork Sausage Patty Ration"
	id = "maple_pork_sausage_patty_ration"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass = 10)
	build_path = /obj/item/storage/ration/maple_pork_sausage_patty
	category = list("initial","Ration")
	
/datum/design/pepper_jack_beef_patty
	name = "Pepper Jack Beef Patty Ration"
	id = "pepper_jack_beef_patty_ration"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass = 10)
	build_path = /obj/item/storage/ration/pepper_jack_beef_patty
	category = list("initial","Ration")

/datum/design/beef_goulash
	name = "Beef Goulash Ration"
	id = "beef_goulash_ration"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass = 10)
	build_path = /obj/item/storage/ration/beef_goulash
	category = list("initial","Ration")

/datum/design/pepperoni_pizza_slice
	name = "Pepperoni Pizza Slice Ration"
	id = "pepperoni_pizza_slice_ration"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass = 10)
	build_path = /obj/item/storage/ration/pepperoni_pizza_slice
	category = list("initial","Ration")
	
/datum/design/blackened_calamari
	name = "Blackened Calamari Ration"
	id = "blackened_calamari_ration"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass = 10)
	build_path = /obj/item/storage/ration/blackened_calamari
	category = list("initial","Ration")
	
/datum/design/elbow_macaroni
	name = "Elbow Macaroni Ration"
	id = "elbow_macaroni_ration"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass = 10)
	build_path = /obj/item/storage/ration/elbow_macaroni
	category = list("initial","Ration")

/datum/design/cheese_pizza_slice
	name = "Politician Pizza Slice Ration"
	id = "cheese_pizza_slice_ration"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass = 10)
	build_path = /obj/item/storage/ration/cheese_pizza_slice
	category = list("initial","Ration")

/datum/design/sososi
	name = "Sososi Ration"
	id = "sososi_ration"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass = 10)
	build_path = /obj/item/storage/ration/sososi
	category = list("initial","Ration")

/datum/design/dofidote
	name = "Dofidote Ration"
	id = "dofidote_ration"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass = 10)
	build_path = /obj/item/storage/ration/dofidote
	category = list("initial","Ration")

/datum/design/miras
	name = "Miras Ration"
	id = "miras_ration"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass = 10)
	build_path = /obj/item/storage/ration/miras
	category = list("initial","Ration")

/datum/design/crayons
	name = "Xal's Delta Mean Marine Emergency Tactical MRE"
	id = "crayons_ration"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass = 10)
	build_path = /obj/item/storage/ration/crayons
	category = list("initial","Ration")

