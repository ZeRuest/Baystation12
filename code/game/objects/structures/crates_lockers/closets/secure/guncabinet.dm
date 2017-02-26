/obj/structure/closet/secure_closet/weaponcabinet
	name = "weapon cabinet"
	req_access = list(access_armory)
	icon = 'icons/obj/guncabinet.dmi'
	icon_state = "base_g"
	icon_off ="base_g"
	icon_broken ="base_g"
	icon_locked ="base_g"
	icon_closed ="base_g"
	icon_opened = "base_g"

/obj/structure/closet/secure_closet/weaponcabinet/New()
	..()
	update_icon()

/obj/structure/closet/secure_closet/weaponcabinet/toggle()
	..()
	update_icon()

/obj/structure/closet/secure_closet/weaponcabinet/open() //There are plenty of things that can open it that don't use toggle
	..()
	update_icon()

/obj/structure/closet/secure_closet/weaponcabinet/update_icon()
	overlays.Cut()
	if(opened)
		overlays += icon(icon,"door_open_g")
	else
		var/lazors = 0
		var/shottas = 0
		for (var/obj/item/weapon/gun/G in contents)
			if (istype(G, /obj/item/weapon/gun/energy/laser))
				lazors++
			if (istype(G, /obj/item/weapon/gun/projectile/shotgun/pump))
				shottas++
		for (var/i = 0 to 2)
			if(lazors || shottas) // only make icons if we have one of the two types.
				var/image/gun = image(icon(src.icon))
				if (lazors > shottas)
					lazors--
					gun.icon_state = "laser"
				else if (shottas)
					shottas--
					gun.icon_state = "pump"
				gun.pixel_x = i*4
				overlays += gun

		overlays += icon(src.icon, "door_g")

		if(welded)
			overlays += icon(src.icon,"welded")

		if(broken)
			overlays += icon(src.icon,"off_g")
		else if (locked)
			overlays += icon(src.icon,"locked_g")
		else
			overlays += icon(src.icon,"open_g")

/obj/structure/closet/secure_closet/weaponcabinet/pumpcabinet/New()
	..()
	new /obj/item/weapon/gun/projectile/shotgun/pump( src )
	new /obj/item/weapon/gun/projectile/shotgun/pump( src )
	new /obj/item/weapon/gun/projectile/shotgun/pump( src )
	new /obj/item/weapon/gun/projectile/shotgun/pump( src )
	update_icon()

/obj/structure/closet/secure_closet/weaponcabinet/lazercabinet/New()
	..()
	new /obj/item/weapon/gun/energy/laser( src )
	new /obj/item/weapon/gun/energy/laser( src )
	new /obj/item/weapon/gun/energy/laser( src )
	new /obj/item/weapon/gun/energy/laser( src )
	update_icon()

/obj/structure/closet/secure_closet/guncabinet
	name = "gun cabinet"
	req_access = list(access_armory)
	icon = 'icons/obj/guncabinet.dmi'
	icon_state = "base"
	icon_off ="base"
	icon_broken ="base"
	icon_locked ="base"
	icon_closed ="base"
	icon_opened = "base"

/obj/structure/closet/secure_closet/guncabinet/New()
	..()
	update_icon()

/obj/structure/closet/secure_closet/guncabinet/toggle()
	..()
	update_icon()

/obj/structure/closet/secure_closet/guncabinet/open() //There are plenty of things that can open it that don't use toggle
	..()
	update_icon()

/obj/structure/closet/secure_closet/guncabinet/update_icon()
	overlays.Cut()
	if(opened)
		overlays += icon(icon,"door_open")
	else
		var/lazors = 0
		var/shottas = 0
		for (var/obj/item/weapon/gun/G in contents)
			if (istype(G, /obj/item/weapon/gun/energy/gun))
				lazors++
			if (istype(G, /obj/item/weapon/gun/projectile/sec/MK))
				shottas++
		for (var/i = 0 to 2)
			if(lazors || shottas) // only make icons if we have one of the two types.
				var/image/gun = image(icon(src.icon))
				if (lazors > shottas)
					lazors--
					gun.icon_state = "e-gun"
				else if (shottas)
					shottas--
					gun.icon_state = "pistol"
				gun.pixel_x = i*4
				overlays += gun

		overlays += icon(src.icon, "door")

		if(welded)
			overlays += icon(src.icon,"welded")

		if(broken)
			overlays += icon(src.icon,"off")
		else if (locked)
			overlays += icon(src.icon,"locked")
		else
			overlays += icon(src.icon,"open")

/obj/structure/closet/secure_closet/guncabinet/handguncabinet/New()
	..()
	new /obj/item/weapon/gun/projectile/sec/MK(src)
	new /obj/item/weapon/gun/projectile/sec/MK(src)
	new /obj/item/weapon/gun/projectile/sec/MK(src)
	new /obj/item/weapon/gun/projectile/sec/MK(src)
	update_icon()

/obj/structure/closet/secure_closet/guncabinet/eguncabinet/New()
	..()
	new /obj/item/weapon/gun/energy/gun(src)
	new /obj/item/weapon/gun/energy/gun(src)
	new /obj/item/weapon/gun/energy/gun(src)
	new /obj/item/weapon/gun/energy/gun(src)
	update_icon()

/obj/structure/closet/secure_closet/specialguncabinet
	name = "special weapon cabinet"
	req_access = list(access_armory)
	icon = 'icons/obj/guncabinet.dmi'
	icon_state = "base_b"
	icon_off ="base_b"
	icon_broken ="base_b"
	icon_locked ="base_b"
	icon_closed ="base_b"
	icon_opened = "base_b"

/obj/structure/closet/secure_closet/specialguncabinet/New()
	..()
	update_icon()

/obj/structure/closet/secure_closet/specialguncabinet/toggle()
	..()
	update_icon()

/obj/structure/closet/secure_closet/specialguncabinet/open() //There are plenty of things that can open it that don't use toggle
	..()
	update_icon()

/obj/structure/closet/secure_closet/specialguncabinet/update_icon()
	overlays.Cut()
	if(opened)
		overlays += icon(icon,"door_open_b")
	else
		var/lazors = 0
		var/shottas = 0
		for (var/obj/item/weapon/gun/G in contents)
			if (istype(G, /obj/item/weapon/gun/energy/ionrifle))
				lazors++
			if (istype(G, /obj/item/weapon/gun/launcher/grenade))
				shottas++
		for (var/i = 0 to 2)
			if(lazors || shottas) // only make icons if we have one of the two types.
				var/image/gun = image(icon(src.icon))
				if (lazors > shottas)
					lazors--
					gun.icon_state = "ionrfl"
				else if (shottas)
					shottas--
					gun.icon_state = "riotgun"
				gun.pixel_x = i*4
				overlays += gun

		overlays += icon(src.icon, "door_b")

		if(welded)
			overlays += icon(src.icon,"welded")

		if(broken)
			overlays += icon(src.icon,"off_b")
		else if (locked)
			overlays += icon(src.icon,"locked_b")
		else
			overlays += icon(src.icon,"open_b")

/obj/structure/closet/secure_closet/specialguncabinet/ionrflcabinet/New()
	..()
	new /obj/item/weapon/gun/energy/ionrifle(src)
	new /obj/item/weapon/gun/energy/ionrifle(src)
	new /obj/item/weapon/gun/energy/ionrifle(src)
	new /obj/item/weapon/gun/energy/ionrifle(src)
	update_icon()

/obj/structure/closet/secure_closet/specialguncabinet/riotguncabinet/New()
	..()
	new /obj/item/weapon/gun/launcher/grenade(src)
	new /obj/item/weapon/gun/launcher/grenade(src)
	new /obj/item/weapon/gun/launcher/grenade(src)
	new /obj/item/weapon/gun/launcher/grenade(src)
	update_icon()


