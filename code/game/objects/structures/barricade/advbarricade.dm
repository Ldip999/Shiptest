/obj/structure/advbarricade
	climbable = TRUE
	anchored = TRUE
	density = TRUE
	layer = BELOW_OBJ_LAYER
	flags_1 = ON_BORDER_1
	obj_flags = CAN_BE_HIT 
	//resistance_flags = XENO_DAMAGEABLE
	//allow_pass_flags = PASS_DEFENSIVE_STRUCTURE|PASSABLE|PASS_WALKOVER
	//climb_delay = 2 SECONDS
	//interaction_flags = INTERACT_CHECK_INCAPACITATED
	max_integrity = 100
	//barrier_flags = HANDLE_BARRIER_CHANCE
	///The type of stack the barricade dropped when disassembled if any.
	var/stack_type
	///The amount of stack dropped when disassembled at full health
	var/stack_amount = 5
	///to specify a non-zero amount of stack to drop when destroyed
	var/destroyed_stack_amount = 0
	var/base_acid_damage = 2
	var/barricade_type = "barricade" //"metal", "plasteel", etc.
	///Whether this barricade has damaged states
	var/can_change_dmg_state = TRUE
	///Whether we can open/close this barrricade and thus go over it
	var/closed = FALSE
	///Can this barricade type be wired
	var/can_wire = FALSE
	///is this barriade wired?
	var/is_wired = FALSE
	///Important for boolet passthrough, I believe?
	var/faction
	climbable = TRUE

/obj/structure/advbarricade/Initialize(mapload, mob/user)
	. = ..()
	update_icon()
	var/static/list/connections = list(
		COMSIG_ATOM_EXIT = PROC_REF(on_try_exit)
	)
	AddElement(/datum/element/connect_loc, connections)
	if(user)
		faction = user.faction

/obj/structure/advbarricade/proc/handle_barrier_chance(mob/living/M)
	return prob(max(30,(100.0*atom_integrity)/max_integrity))

/obj/structure/advbarricade/examine(mob/user)
	. = ..()
	if(is_wired)
		. += span_info("There is a length of wire strewn across the top of this barricade.")
	switch((atom_integrity / max_integrity) * 100)
		if(75 to INFINITY)
			. += span_info("It appears to be in good shape.")
		if(50 to 75)
			. += span_warning("It's slightly damaged, but still very functional.")
		if(25 to 50)
			. += span_warning("It's quite beat up, but it's holding together.")
		if(-INFINITY to 25)
			. += span_warning("It's crumbling apart, just a few more blows will tear it apart.")

/obj/structure/advbarricade/proc/on_try_exit(datum/source, atom/movable/mover, direction)

	if(mover == src)
		return
	if(!(direction & dir))
		return
	if(!density)
		return
	if(mover.throwing)
		return
	if(mover.movement_type & (PHASING | FLYING | FLOATING))
		return
	return COMPONENT_ATOM_BLOCK_EXIT

/obj/structure/advbarricade/CanAllowThrough(atom/movable/mover, turf/target)
	if(get_dir(loc, target) & dir)
		if(is_wired && density && ismob(mover))
			return FALSE

	return ..()

/*/obj/structure/advbarricade/attack_animal(mob/user)
	return attack_alien(user)*/

/*/obj/structure/advbarricade/attack_alien(mob/living/carbon/xenomorph/xeno_attacker, damage_amount = xeno_attacker.xeno_caste.melee_damage, damage_type = BRUTE, armor_type = MELEE, effects = TRUE, armor_penetration = xeno_attacker.xeno_caste.melee_ap, isrightclick = FALSE)
	if(xeno_attacker.status_flags & INCORPOREAL)
		return FALSE

	if(is_wired)
		balloon_alert(xeno_attacker, "Wire slices into us")
		xeno_attacker.apply_damage(15, blocked = MELEE , sharp = TRUE, updating_health = TRUE)

	return ..()
*/

/obj/structure/advbarricade/attackby(obj/item/I, mob/user, params)
	. = ..()
	if(.)
		return

	/*if(!istype(I, /obj/item/stack/barbed_wire) || !can_wire)
		return

	var/obj/item/stack/barbed_wire/B = I

	balloon_alert_to_viewers("Setting up wire...")
	if(!do_after(user, 2 SECONDS, NONE, src, BUSY_ICON_BUILD) || !can_wire)
		return

	playsound(loc, 'sound/effects/barbed_wire_movement.ogg', 25, 1)

	B.use(1)
	wire()
	*/

/obj/structure/advbarricade/proc/wire()
	can_wire = FALSE
	is_wired = TRUE
	climbable = FALSE
	modify_max_integrity(max_integrity + 50)
	update_icon()

/obj/structure/advbarricade/wirecutter_act(mob/living/user, obj/item/I)
	if(!is_wired)
		return FALSE

	balloon_alert_to_viewers("Removing wire...")

	if(!do_after(user, 2 SECONDS, NONE, src))
		return TRUE

	playsound(loc, 'sound/items/wirecutter.ogg', 25, TRUE)
	balloon_alert_to_viewers("Removes the barbed wire")
	modify_max_integrity(max_integrity - 50)
	can_wire = TRUE
	is_wired = FALSE
	climbable = TRUE
	update_icon()
	//new /obj/item/stack/barbed_wire(loc)


/obj/structure/advbarricade/deconstruct(disassembled = TRUE, mob/living/blame_mob)
	/*if(disassembled && is_wired)
		new /obj/item/stack/barbed_wire(loc) TODO :  BARBED WIRES!!!!*/
	if(stack_type)
		var/stack_amt
		if(!disassembled && destroyed_stack_amount)
			stack_amt = destroyed_stack_amount
		else
			stack_amt = round(stack_amount * (atom_integrity/max_integrity)) //Get an amount of sheets back equivalent to remaining health. Obviously, fully destroyed means 0

		if(stack_amt)
			new stack_type (loc, stack_amt)
	return ..()

/obj/structure/advbarricade/ex_act(severity)
	switch(severity)
		if(EXPLODE_DEVASTATE)
			deconstruct(FALSE)
			return
		if(EXPLODE_HEAVY)
			take_damage(rand(33, 66), BRUTE, BOMB)
		if(EXPLODE_LIGHT)
			take_damage(rand(10, 33), BRUTE, BOMB)
	update_icon()

/obj/structure/advbarricade/setDir(newdir)
	. = ..()
	update_icon()

/obj/structure/advbarricade/update_icon_state()
	. = ..()
	var/damage_state
	var/percentage = (atom_integrity / max_integrity) * 100
	switch(percentage)
		if(-INFINITY to 25)
			damage_state = 3
		if(25 to 50)
			damage_state = 2
		if(50 to 75)
			damage_state = 1
		if(75 to INFINITY)
			damage_state = 0
	if(!closed)
		if(can_change_dmg_state)
			icon_state = "[barricade_type]_[damage_state]"
		else
			icon_state = "[barricade_type]"
		switch(dir)
			if(SOUTH)
				layer = ABOVE_MOB_LAYER
			if(NORTH)
				layer = initial(layer) - 0.01
			else
				layer = initial(layer)
		if(!anchored)
			layer = initial(layer)
	else
		if(can_change_dmg_state)
			icon_state = "[barricade_type]_closed_[damage_state]"
		else
			icon_state = "[barricade_type]_closed"
		layer = OBJ_LAYER

/obj/structure/advbarricade/update_overlays()
	. = ..()
	if(is_wired)
		if(!closed)
			. += image(icon, icon_state = "[barricade_type]_wire")
		else
			. += image(icon, icon_state = "[barricade_type]_closed_wire")


/obj/structure/advbarricade/verb/rotate()
	set name = "Rotate Barricade Counter-Clockwise"
	set category = "IC.Object"
	set src in oview(1)

	if(anchored)
		balloon_alert(usr, "It's fastened to the floor")
		return FALSE

	setDir(turn(dir, 90))

/obj/structure/advbarricade/verb/revrotate()
	set name = "Rotate Barricade Clockwise"
	set category = "IC.Object"
	set src in oview(1)

	if(anchored)
		balloon_alert(usr, "It's fastened to the floor")
		return FALSE

	setDir(turn(dir, 270))


/obj/structure/advbarricade/AltClick(mob/living/user)
	if(anchored)
		balloon_alert(usr, "It's fastened to the floor")
		return FALSE

	setDir(turn(dir, 270))

/obj/structure/advbarricade/CanPass(atom/movable/mover, border_dir)
	. = ..()
	if(border_dir & dir)
		return . || mover.throwing || mover.movement_type & (FLYING | FLOATING)
	return TRUE