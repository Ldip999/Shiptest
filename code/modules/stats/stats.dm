/datum/stats
	var/mob/parent
	var/damage_done = 0
	var/totalmissioncredits = 0
	var/totalpersonalearnings = 0

/datum/stats/New(mob/p)
	parent = p

/datum/stats/proc/addDamage(dam)
	damage_done += dam
	if(parent.ckey)
		var/datum/points/point = GLOB.ckey_points_kvp[parent.ckey]
		point.AddDmgPoints(dam)

/datum/stats/proc/addMission(payout)
	if(parent.ckey)
		totalmissioncredits += payout
		var/datum/points/point = GLOB.ckey_points_kvp[parent.ckey]
		point.AddMissionPoints(payout)

/datum/stats/proc/addMissionPersonalEarnings(payout)
	if(parent.ckey)
		totalpersonalearnings += payout
		var/datum/points/point = GLOB.ckey_points_kvp[parent.ckey]
		point.addMissionPersonalEarnings(payout)
