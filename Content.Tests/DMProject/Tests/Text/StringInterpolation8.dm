﻿/proc/RunTest()
	ASSERT("\roman[1.5]" == "i")
	ASSERT("\roman [1.5]" == " i")
	ASSERT("\Roman[1.5]" == "I")
	ASSERT("\Roman [1.5]" == " I")
	ASSERT("\roman shitposts [1]" == " shitposts i")
	ASSERT("\roman shitposts [1] \the [2] [3]\s" == " shitposts i  3s")