/obj/item/clothing/suit/mob_can_equip(mob/living/M, mob/living/equipper, slot, disable_warning = FALSE, bypass_equip_delay_self = FALSE, clothing_check = FALSE, list/return_warning)
	. = ..()
	if(ishuman(M))
		var/mob/living/carbon/human/H = M
		if(HAS_TRAIT(H, TRAIT_ARMOR_AVERSION))
			if( armor.melee > 20 || \
				armor.bullet > 20 || \
				armor.laser > 20 || \
				armor.energy > 20)
				to_chat(M, span_danger("You can't wear this armour!"))
				return FALSE
