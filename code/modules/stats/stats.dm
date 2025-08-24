/datum/stats
	var/mob/parent
	var/damage_done = 0

/datum/stats/New(mob/p)
	parent = p

/datum/stats/proc/addDamage(dam)
	damage_done += dam
	if(parent.ckey)
		var/datum/points/point = GLOB.ckey_points_kvp[parent.ckey]
		point.AddDmgPoints(dam)
