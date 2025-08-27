/datum/quirk/vetdoc
	name = "Veteran Doctor"
	desc = "After years upon years of practice, you mastered the art of healing, and are able to do certain advanced surgeries without the guidance of an OR computer and it's upgrades, and are able to scavange for medical supplies from scraps."
	value = 5
	mob_traits = list(TRAIT_VETDOC)
	gain_text = span_notice("Years upon years of medical practice is at your fingertips.")
	lose_text = span_danger("You forget your medical experience.")
	
/datum/quirk/fieldmedic
	name = "Field Medic"
	desc = "Due to having to work in less than optimal circumstances in your past, you have quickly mastered the ways in which you can use ordinary things into tools for surgery and tending wounds. Gain a bonus to ghetto surgeries, and are able to scavange for medical supplies from scraps."
	value = 3
	mob_traits = list(TRAIT_FIELDMEDIC)
	gain_text = span_notice("You really know how to poke wounds with a screwdriver.")
	lose_text = span_danger("You lost your hankering to saw ribs with a hatchet.")
