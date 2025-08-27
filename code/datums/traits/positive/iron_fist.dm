/datum/quirk/iron_fist
	name = "Fists of Iron"
	desc = "You have fists of kung-fury! Increases unarmed damage."
	value = 2
	gain_text = span_notice("Your fists feel furious!")
	lose_text = span_danger("Your fists feel calm again.")
	medical_record_text = "Patient has claimed to have accidentally break pencils when holding them."

/datum/quirk/iron_fist/add()
	var/mob/living/carbon/human/H = quirk_holder
	H.dna.species.punchdamagelow += 5
	H.dna.species.punchdamagehigh += 2

/datum/quirk/iron_fist/remove()
	var/mob/living/carbon/human/H = quirk_holder
	H.dna.species.punchdamagelow -= 5
	H.dna.species.punchdamagehigh -= 2

/datum/quirk/steel_fist
	name = "Fists of Steel"
	desc = "You have MASSIVE fists of kung-fury! Even MORE increases unarmed damage."
	value = 3
	gain_text = span_notice("I trained in a barn")
	lose_text = span_danger("I no longer remember my roots in Duranda")
	medical_record_text = "Patient has accidentally destroyed the door handle to my office. A replacement is needed."

/datum/quirk/steel_fist/add()
	var/mob/living/carbon/human/H = quirk_holder
	H.dna.species.punchdamagelow += 10
	H.dna.species.punchdamagehigh += 6

/datum/quirk/steel_fist/remove()
	var/mob/living/carbon/human/H = quirk_holder
	H.dna.species.punchdamagelow -= 10
	H.dna.species.punchdamagehigh -= 6