/datum/quirk/lifegiver
	name = "Health - Tough"
	desc = "You have +10 health. What this actually means is that you need to take ten more points of damage before you go into crit. "
	value = 3
	gain_text = span_notice("You feel more durable.")
	lose_text = span_danger("You feel flimsy once more.")
	medical_record_text = "Patient has higher capacity for injury."

/datum/quirk/lifegiver/add()
	var/mob/living/carbon/human/H = quirk_holder
	H.maxHealth += 10
	H.health += 10

/datum/quirk/lifegiver/remove()
	var/mob/living/carbon/human/H = quirk_holder
	H.maxHealth -= 10
	H.health -= 10

/datum/quirk/lifegiverplus
	name = "Health - Very Tough"
	desc = "You have +20 health. What this actually means is that you need to take twenty more points of damage before you go into crit. "
	value = 6
	gain_text = span_notice("You feel very durable.")
	lose_text = span_danger("You feel flimsy once more.")
	medical_record_text = "Patient has very high capacity for injury."

/datum/quirk/lifegiverplus/add()
	var/mob/living/carbon/human/H = quirk_holder
	H.maxHealth += 20
	H.health += 20

/datum/quirk/lifegiverplus/remove()
	var/mob/living/carbon/human/H = quirk_holder
	H.maxHealth -= 20
	H.health -= 20