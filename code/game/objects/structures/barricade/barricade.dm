/obj/structure/advbarricade/sandbags
	name = "sandbag barricade"
	desc = "A bunch of bags filled with sand, stacked into a small wall. Surprisingly sturdy, albeit labour intensive to set up. Trusted to do the job since 1914."
	icon = 'icons/obj/structures/barricades/sandbags.dmi'
	icon_state = "sandbag_0"
	max_integrity = 325
	barricade_type = "sandbag"
	//soft_armor = list(MELEE = 0, BULLET = 30, LASER = 30, ENERGY = 30, BOMB = 0, BIO = 100, FIRE = 80, ACID = 40)
	//coverage = 128
	//bar_material = 3 //For some raisin the barricade flags get undefined and I'm not sure if I want to redefine them. Just pretend that SAND is written here, the value remains the same.
	can_wire = TRUE
	climbable = TRUE
	CanAtmosPass = ATMOS_PASS_PROC
	flags_1 = ON_BORDER_1


/obj/structure/advbarricade/sandbags/update_icon()
	. = ..()
	if(dir == SOUTH)
		pixel_y = -7
	else if(dir == NORTH)
		pixel_y = 7
	else
		pixel_y = 0

/obj/structure/advbarricade/sandbags/MouseDrop(over_object, src_location, over_location)
	. = ..()
	if(over_object == usr && Adjacent(usr))
		if(src.flags_1 & NODECONSTRUCT_1)
			return
		if(!usr.canUseTopic(src, BE_CLOSE, ismonkey(usr)))
			return
		usr.visible_message(span_notice("[usr] begins pulling apart \the [src.name]..."), span_notice("You begin pulling apart \the [src.name]..."))
		if(do_after(usr, 30, usr))
			deconstruct()

/obj/structure/advbarricade/sandbags/attackby(obj/item/I, mob/user, params)
	. = ..()
	if(.)
		return

	/*if(istype(I, /obj/item/tool/shovel) && user.a_intent != INTENT_HARM)
		var/obj/item/tool/shovel/ET = I
		if(ET.folded)
			return TRUE
		balloon_alert_to_viewers("disassembling...")
		if(!do_after(user, ET.shovelspeed, NONE, src, BUSY_ICON_BUILD))
			return TRUE
		user.visible_message(span_notice("[user] disassembles [src]."),
		span_notice("You disassemble [src]."))
		deconstruct(!get_self_acid())
		return TRUE
	*/
	if(istype(I, /obj/item/stack/sandbags))
		if(atom_integrity == max_integrity)
			balloon_alert(user, "Already repaired")
			return
		var/obj/item/stack/sandbags/D = I
		if(D.get_amount() < 1)
			balloon_alert(user, "Not enough sandbags")
			return
		balloon_alert_to_viewers("Replacing sandbags...")

		if(!do_after(user, 3 SECONDS) || atom_integrity >= max_integrity)
			return

		/*if(get_self_acid())
			balloon_alert(user, "It's melting!")
			return*/

		if(!D.use(1))
			return

		repair_damage(max_integrity * 0.2) //Each sandbag restores 20% of max health as 5 sandbags = 1 sandbag barricade.
		balloon_alert_to_viewers("Repaired")
		update_icon()

/*/obj/structure/barricade/CanAllowThrough(atom/movable/mover, border_dir)
	. = ..()
	if(.)
		return

	if(border_dir == dir)
		return FALSE
	return TRUE/
*/
