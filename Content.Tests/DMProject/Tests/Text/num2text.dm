﻿/proc/RunTest()
	ASSERT(num2text(999.23123, 4, 10) == "0999")
	ASSERT(num2text(999.23123, 4, 12) == "06b3")
	ASSERT(num2text(999.23123, 4, 3) == "1101000")
	ASSERT(num2text(999.23123, 20, 5) == "00000000000000012444")