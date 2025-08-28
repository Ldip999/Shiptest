/datum/quirk/weakpaintolerance
	name = "Pain Tolerance - Weak"
	desc = "Your pain tolerance is really low. You go into crit 50 damage points earlier than you should"
	gain_text = span_danger("You feel wimpy...")
	lose_text = span_notice("You feel stronger.")
	value = -5

/datum/quirk/weakpaintolerance/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	H.crit_threshold += 50