/mob/living/simple_animal/hostile/human/advanced
	var/datum/advhuman_personality/personality

/*/mob/living/simple_animal/hostile/human/Initialize(mapload)
	. = ..()
	if(mob_spawner)
		apply_dynamic_human_appearance(src, species_path = species_spawner, mob_spawn_path = mob_spawner, r_hand = r_hand, l_hand = l_hand)
		if(ispath(r_hand,/obj/item/gun))
			var/obj/item/gun/our_gun = r_hand
			spread = our_gun.spread
		else if(ispath(l_hand, /obj/item/gun))
			var/obj/item/gun/our_gun = l_hand
			spread = our_gun.spread

	if(ispath(armor_base, /obj/item/clothing))
		//sigh. if only we could get the initial() value of list vars
		var/obj/item/clothing/instance = new armor_base()
		armor = instance.armor
		qdel(instance)

/mob/living/simple_animal/hostile/human/drop_loot()
	. = ..()
	if(!human_loot)
		return
	if(mob_spawner)
		new mob_spawner(loc)
	if(r_hand && weapon_drop_chance)
		if(prob(weapon_drop_chance))
			var/obj/item/gun/ballistic/cosmetic_damage = new r_hand(loc)
			if(istype(cosmetic_damage))
				cosmetic_damage.gun_wear = rand(cosmetic_damage.wear_minor_threshold, cosmetic_damage.wear_maximum) //my free gun... it's bowowken...
		else
			visible_message(span_danger("[src]'s [r_hand.name] is destroyed as they collapse!"))
	if(l_hand && weapon_drop_chance)
		if(prob(weapon_drop_chance))
			var/obj/item/gun/ballistic/cosmetic_damage = new l_hand(loc)
			if(istype(cosmetic_damage))
				cosmetic_damage.gun_wear = rand(cosmetic_damage.wear_minor_threshold, cosmetic_damage.wear_maximum)
		else
			visible_message(span_danger("[src]'s [l_hand.name] is destroyed as they collapse!"))


/mob/living/simple_animal/hostile/human/vv_edit_var(var_name, var_value)
	switch(var_name)
		if (NAMEOF(src, armor_base))
			if(ispath(var_value, /obj/item/clothing))
				var/obj/item/clothing/temp = new var_value
				armor = temp.armor
				qdel(temp)
				datum_flags |= DF_VAR_EDITED
				return TRUE
			return FALSE
	. = ..()
*/