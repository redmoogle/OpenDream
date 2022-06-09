/turf
	icon = 'icons/turf.dmi'
	icon_state = "turf"

/turf/blue
	icon_state = "turf_blue"

/mob
	icon = 'icons/mob.dmi'
	icon_state = "mob"

	New()
		..()
		loc = locate(5, 5, 1)

	verb/show_button_2()
		set name = "Show button 2"
		winset(usr, "button1", "is-visible=false;is-disabled=true");
		winset(usr, "button2", "is-visible=true;is-disabled=false");
		
	verb/show_button_1()
		set name = "Show button 1"
		winset(usr, "button1", "is-visible=true;is-disabled=false");
		winset(usr, "button2", "is-visible=false;is-disabled=true");

	verb/move_up()
		step(src, UP)

	verb/move_down()
		step(src, DOWN)

/mob/Stat()
	if (statpanel("Status"))
		stat("tick_usage", world.tick_usage)
		stat("time", world.time)

/world/New()
	..()
	world.log << "World loaded!"
