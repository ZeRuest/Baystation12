/datum/admin_secret_item/fun_secret/break_all_lights
	name = "Toggle expedition"

/datum/admin_secret_item/fun_secret/break_all_lights/execute(var/mob/user)
	. = ..()
	if(.)
		lightsout(0,0)
