/obj/item/stack/sandbags_empty
	name = "empty sandbags"
	desc = "Some empty sandbags, best to fill them up with some sand if you want to use them."
	singular_name = "sandbag"
	icon_state = "sandbag_stack"
	//worn_icon_state = "sandbag_stack"
	lefthand_file = 'icons/mob/inhands/barricades/stacks_left.dmi'
	righthand_file = 'icons/mob/inhands/barricades/stacks_right.dmi'
	force = 2
	throw_speed = 5
	throw_range = 20
	max_amount = 50
	attack_verb = list("hits", "bludgeons", "whacks")
	//number_of_extra_variants = 3


/obj/item/stack/sandbags_empty/attackby(obj/item/I, mob/user, params)
	. = ..()
	if(.)
		return

	if(istype(I, /obj/item/stack/ore/glass))
		var/obj/item/stack/ore/glass/G = I
		to_chat(user, span_notice("You fill the sandbag."))
		var/obj/item/stack/sandbags/newsandbags = new /obj/item/stack/sandbags(drop_location())

		if (Adjacent(user) && !issilicon(user))
			user.put_in_hands(newsandbags)
		G.use(1)
		use(1)

	else if(istype(I, /obj/item/stack/sheet/mineral/snow))
		var/obj/item/stack/S = I
		to_chat(user, span_notice("You fill the sandbag... snowbag? You fill it."))
		new /obj/item/stack/sandbags(user.loc)
		//new_bags.add_to_stacks(user)
		S.use(1)
		use(1)

///To be used for cloth crafting
/obj/item/stack/sandbags_empty/five
	amount = 5

//half a max stack
/obj/item/stack/sandbags_empty/half
	amount = 25

//max stack
/obj/item/stack/sandbags_empty/full
	amount = 50

//Full sandbags
/obj/item/stack/sandbags
	name = "sandbags"
	desc = "Some bags filled with sand. For now, just cumbersome, but soon to be used for fortifications."
	singular_name = "sandbag"
	icon_state = "sandbag_pile"
	//worn_icon_state = "sandbag_pile"
	lefthand_file = 'icons/mob/inhands/barricades/stacks_left.dmi'
	righthand_file = 'icons/mob/inhands/barricades/stacks_right.dmi'
	force = 9
	throwforce = 15
	throw_speed = 5
	throw_range = 20
	max_amount = 25
	attack_verb = list("hits", "bludgeons", "whacks")
	merge_type = /obj/item/stack/sandbags


/obj/item/stack/sandbags/Initialize(mapload, new_amount, merge = TRUE)
	. = ..()
	update_appearance()

/obj/item/stack/sandbags/examine(mob/user)
	. = ..()
	. += span_notice("Alt click while selected to empty [src].")

/obj/item/stack/sandbags/large_stack
	amount = 25


/obj/item/stack/sandbags/get_main_recipes()
	. = ..()
	. += list(new/datum/stack_recipe("sandbag barricade", /obj/structure/advbarricade/sandbags, 5, time = 2 SECONDS, window_checks = TRUE))

/obj/item/stack/sandbags/AltClick(mob/user)
	. = ..()
	if(get_amount() < 1)
		return
	if(!do_after(user, 0.5 SECONDS, IGNORE_USER_LOC_CHANGE|IGNORE_TARGET_LOC_CHANGE, user))
		return
	user.balloon_alert(user, "You start emptying [src].")
	while(get_amount() > 0)
		if(!do_after(user, 0.5 SECONDS, IGNORE_USER_LOC_CHANGE|IGNORE_TARGET_LOC_CHANGE, user))
			user.balloon_alert(user, "You stop emptying [src].")
			break
		// check if we can stuff it into the user's hands
		if(!use(1))
			break
		if(amount < 1)
			user.balloon_alert(user, "You finish emptying [src].")
		var/obj/item/stack/sandbag = user.get_inactive_held_item()
		if(istype(sandbag, /obj/item/stack/sandbags_empty) && sandbag.add(1))
			continue
		var/obj/item/stack/sandbags_empty/E = new(get_turf(user))
		if(!sandbag && user.put_in_hands(E))
			continue
		//E.add_to_stacks(user)

