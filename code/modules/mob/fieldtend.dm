/mob/verb/fieldtend()
	set name = "Field Tending Supplies"
	set category = "IC"
	set desc = "Retrive your scavanged field tending supplies"
	if(HAS_TRAIT(src,TRAIT_VETDOC))
		if(isliving(src) && stat == CONSCIOUS)
			var/mob/living/curruser = src
			var/charges = floor(curruser.heal_reservoir)
			if(charges > 0)
				var/obj/item/stack/medical/bruise_pack/fieldtend/tendies = new(curruser) // Yum 🤤🤤🤤
				curruser.put_in_hands(tendies)
				curruser.heal_reservoir -= 1
				to_chat(src, span_notice("You haphazardly fashion some odds and ends into a handful of makeshift field tend supplies."))
			else
				to_chat(src, span_warning("You have no scavanged medical supplies at the moment, wait a bit!"))
	else
		to_chat(src, "You aren't capable of field tending!")
