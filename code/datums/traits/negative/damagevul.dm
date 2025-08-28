/datum/quirk/bruteweak
	name = "Brute Weakness, Minor"
	desc = "You're weaker to physical trauma than others, taking 10% extra brute damage"
	mob_traits = list(TRAIT_BRUTEWEAK)
	value = -2

/datum/quirk/bruteweak/add()
	var/mob/living/carbon/human/H = quirk_holder
	var/datum/species/species = H.dna.species
	species.brutemod += 0.1

/datum/quirk/bruteweak/remove()
	var/mob/living/carbon/human/H = quirk_holder
	var/datum/species/species = H.dna.species
	species.brutemod -= 0.1

/datum/quirk/bruteweakmajor
	name = "Brute Weakness, Major"
	desc = "You're much weaker to physical trauma than others, taking 20% extra brute damage"
	mob_traits = list(TRAIT_BRUTEWEAKMAJOR)
	value = -3

/datum/quirk/bruteweakmajor/add()
	var/mob/living/carbon/human/H = quirk_holder
	var/datum/species/species = H.dna.species
	species.brutemod += 0.2

/datum/quirk/bruteweakmajor/remove()
	var/mob/living/carbon/human/H = quirk_holder
	var/datum/species/species = H.dna.species
	species.brutemod -= 0.2


/datum/quirk/burnweak
	name = "Burn Weakness, Minor"
	desc = "You're weaker to burns than others, taking 10% extra burn damage"
	mob_traits = list(TRAIT_BURNWEAK)
	value = -2

/datum/quirk/burnweak/add()
	var/mob/living/carbon/human/H = quirk_holder
	var/datum/species/species = H.dna.species
	species.burnmod += 0.1

/datum/quirk/burnweak/remove()
	var/mob/living/carbon/human/H = quirk_holder
	var/datum/species/species = H.dna.species
	species.burnmod -= 0.1

/datum/quirk/burnweakmajor
	name = "Burn Weakness, Major"
	desc = "You're much weaker to burns than others, taking 20% extra burn damage"
	mob_traits = list(TRAIT_BURNWEAKMAJOR)
	value = -4

/datum/quirk/burnweakmajor/add()
	var/mob/living/carbon/human/H = quirk_holder
	var/datum/species/species = H.dna.species
	species.burnmod += 0.2

/datum/quirk/burnweakmajor/remove()
	var/mob/living/carbon/human/H = quirk_holder
	var/datum/species/species = H.dna.species
	species.burnmod -= 0.2