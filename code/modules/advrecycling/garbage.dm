/obj/item/stack/sheet/garbage
	name = "garbage"
	icon = 'icons/obj/garbagesprites.dmi'
	icon_state = "garbageore"
	singular_name = "garbage"

	custom_materials = list(/datum/material/garbage=MINERAL_MATERIAL_AMOUNT)
	throwforce = 1
	merge_type = /obj/item/stack/sheet/garbage
	material_type = /datum/material/garbage

/datum/material/garbage
	name = "garbage"
	id = "garbage"
	desc = "A collection of seemingly unusable odds and ends. Could be treasure however!"
	color = "#006609"
	categories = list(MAT_CATEGORY_BASE_RECIPES = TRUE)
	sheet_type = /obj/item/stack/sheet/garbage
	value_per_unit = 0.0050

