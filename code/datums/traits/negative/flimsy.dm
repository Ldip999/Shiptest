/datum/quirk/flimsy
	name = "Health - Flimsy"
	desc = "You have -10 health. What this actually means is that you need to take ten less points of damage before you go into crit. "
	value = -2
	gain_text = span_notice("You feel less durable.")
	lose_text = span_danger("You feel less flimsy once more.")
	medical_record_text = "Patient has lower capacity for injury."

/datum/quirk/lifegiver/add()
	var/mob/living/carbon/human/H = quirk_holder
	H.maxHealth -= 10
	H.health -= 10

/datum/quirk/lifegiver/remove()
	var/mob/living/carbon/human/H = quirk_holder
	H.maxHealth += 10
	H.health += 10

/datum/quirk/flimsyplus
	name = "Health - Very Flimsy"
	desc = "You have -20 health. What this actually means is that you need to take twenty less points of damage before you go into crit. "
	value = -5
	gain_text = span_notice("You feel very flimsy!.")
	lose_text = span_danger("You don't feel as fragile as before.")
	medical_record_text = "Patient has very low capacity for injury."

/datum/quirk/lifegiverplus/add()
	var/mob/living/carbon/human/H = quirk_holder
	H.maxHealth -= 20
	H.health -= 20

/datum/quirk/lifegiverplus/remove()
	var/mob/living/carbon/human/H = quirk_holder
	H.maxHealth += 20
	H.health += 20