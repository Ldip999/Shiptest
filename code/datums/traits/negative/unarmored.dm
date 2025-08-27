/datum/quirk/armor_aversion
	name = "Armor Aversion"
	desc = "Whenever due to bravery, personal preference, or simple a hatred towards being encumbered in a big metal coffin, you are refuse to wear armor that is better than tier 2 melee, bullet, laser, or energy."
	value = -3
	mob_traits = list(TRAIT_ARMOR_AVERSION)
	gain_text = span_notice("You can't bring yourself to put on armor.")
	lose_text = span_danger("Maybe not being so exposed isn't so bad...")

/datum/quirk/armor_aversion/add()
	var/mob/living/carbon/human/H = quirk_holder
	var/obj/item/clothing/currsuit = H.wear_suit
	if(!H.can_equip(currsuit,ITEM_SLOT_OCLOTHING,TRUE))
		H.dropItemToGround(currsuit,TRUE,TRUE,FALSE)
