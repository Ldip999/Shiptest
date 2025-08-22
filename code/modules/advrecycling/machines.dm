
/obj/machinery/garbagecollector
	name = "garbage collector"
	desc = "Takes useless things and compacts them into more manageable forms of trash."
	icon = 'icons/obj/machines/garbagecollector.dmi'
	icon_state = "base"
	density = TRUE
	use_power = IDLE_POWER_USE
	idle_power_usage = IDLE_DRAW_LOW
	active_power_usage = ACTIVE_DRAW_HIGH
	power_channel = AREA_USAGE_EQUIP
	circuit = /obj/item/circuitboard/machine/garbagecollector
	layer = BELOW_OBJ_LAYER


	var/candispensemoney = FALSE

/obj/machinery/garbagecollector/Initialize()
	AddComponent(/datum/component/material_container,list(/datum/material/garbage), 0, TRUE, null, null, null, TRUE)
	. = ..()

/obj/machinery/garbagecollector/RefreshParts()
	var/mat_capacity = 0
	for(var/obj/item/stock_parts/matter_bin/new_matter_bin in component_parts)
		mat_capacity += new_matter_bin.rating*75000
	var/datum/component/material_container/materials = GetComponent(/datum/component/material_container)
	materials.max_amount = mat_capacity

/obj/machinery/garbagecollector/attackby(obj/item/O, mob/living/user, params)
	if(!O.custom_materials)
		if(!O.grind_results)
			if(O.contents.len)
				to_chat(user, span_warning("[O] has items inside of it. Please remove them before inserting it."))
				return
			if(!user.temporarilyRemoveItemFromInventory(O))
				to_chat(user, span_warning("[O] is stuck to you and cannot be placed into [src]."))
				return
			var/garbageamount = 0
			switch(O.w_class)
				if(WEIGHT_CLASS_TINY)
					garbageamount = 1
				if(WEIGHT_CLASS_SMALL)
					garbageamount = 10
				if(WEIGHT_CLASS_NORMAL)
					garbageamount = 50
				if(WEIGHT_CLASS_BULKY)
					garbageamount = 100
				if(WEIGHT_CLASS_HUGE)
					garbageamount = 200
				if(WEIGHT_CLASS_GIGANTIC)
					garbageamount = 500
			var/datum/component/material_container/materials = GetComponent(/datum/component/material_container)
			if(!materials.has_space(garbageamount))
				to_chat(user, span_warning("[src] is full. Please remove materials from [src] in order to insert more."))
				return
			materials.insert_amount_mat(garbageamount,/datum/material/garbage)
			to_chat(user, span_notice("You put [O] into the [src]."))
			qdel(O)
		else
			to_chat(user, span_warning("[O] has useful reagents! Try a ginder?"))
			return
	else
		to_chat(user, span_warning("[O] has pure and useful materials! Try an autolathe?"))
		return

/obj/machinery/garbagecollector/outpost
	candispensemoney = TRUE
