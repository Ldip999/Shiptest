
/obj/machinery/computer/cargo/outpost
	name = "outpost supply console"
	desc = "A console for buying supplies on site, bypassing the hangar's delivery system. This console is completely neutral, and for all legitimate purposes, anonymous, which means your faction specific accesses and discounts are null and void. But hey, you do get a local discount for not hogging the delivery pipes and moving the gear yourself!"
	/// The account to charge purchases to, defaults to the cargo budget
	//var/datum/bank_account/charge_account
	selfcheckout = TRUE
	message = "All purchuses will be delivered into the local cargo bay!"

/obj/machinery/computer/cargo/outpost/Initialize()
	. = ..()
	
	outpost_docked = get_overmap_location()
	charge_account = outpost_docked.checkoutbuffer



/obj/outpost_crate_spawner
	invisibility = INVISIBILITY_OBSERVER
	name = "crate delivery chute"
	icon = 'icons/effects/mapping/mapping_helpers.dmi'
	icon_state = "adder"
	anchored = TRUE
	resistance_flags = INDESTRUCTIBLE | LAVA_PROOF | FIRE_PROOF | UNACIDABLE | ACID_PROOF | LANDING_PROOF | HYPERSPACE_PROOF

/obj/outpost_crate_spawner/proc/handle_order(datum/supply_order/order)
	order.generate(get_turf(src))