GLOBAL_LIST_EMPTY(ckey_points_kvp)

/datum/points
	var/pointcount
	var/pointsToAdd = 0.0

	var/client/parent

/datum/points/proc/AddDmgPoints(dmg)
	pointsToAdd += dmg / 200
	EvalPoints()

/datum/points/proc/AddMissionPoints(payout)
	pointsToAdd += payout / 100
	EvalPoints()

/datum/points/proc/addMissionPersonalEarnings(payout)
	pointsToAdd += payout
	EvalPoints()

/datum/points/proc/EvalPoints()
	if(pointsToAdd >= 1)
		pointcount += pointsToAdd
		pointsToAdd = 0
		if(!parent)
			return
		else
			parent.prefs.points = pointcount
			parent.prefs.save_preferences()
			

