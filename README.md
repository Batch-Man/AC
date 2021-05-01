# AC Function 1.1
**Description:**
It allows Precise Mathematical Calculation with advanced math functions.

**Note:**
This Project ***uses dependencies*** in order to work properly, so keep all the files together in the same folder/PATH.

AUTHOR:	**MICHA£ BUKOWSKI**

# USAGE

	addition 				(+)			WORKS	syntax: x+y
	subtraction				(-)			WORKS	syntax: x-y
	multiplication			(*)			WORKS	syntax: x*y
	division				(/)			WORKS	syntax: x/y
	exponentiation			(^)			WORKS	syntax: XpowY	(X^Y)
	sqrt					(√)			WORKS	syntax: sqrt(x)
	natural logharitm		(log_n)		WORKS	syntax: log_n(x)
	degree to radian conv	(dtr)		WORKS	syntax: x[dtr]
	radian to degree conv	(rtd)		WORKS	syntax: x[rtd]
	sine 	(radian)		(sin)		WORKS	syntax: sin(x)
	cosine	(radian)		(cos)		WORKS	syntax: cos(x)




-------------------------------------------
Calculation Usage:

<code>CALL AC.BAT C [CALCULATIONS] [OUTPUT VARIABLE]</code>

​	Eg. call ac.bat c (1/7)*3.5/(11+7) var1
​	OUTPUT: VAR1=0.02777777777777777777


-------------------------------------------
Rounding Usage:

<code>CALL AC.BAT R [VALUE] [DECIMALS] [OUTPUT VARIABLE]</code>

​	Eg. call ac.bat r 0.02777777777777777777 4 var2
​	OUTPUT: VAR2=0.0278



​	Eg. call ac.bat r 1.9091 0 var3
​	OUTPUT: VAR3=2




-------------------------------------------
Calculation + Rounding Usage:

<code>CALL AC.BAT C [CALCULATIONS] [OUTPUT VARIABLE] R [DECIMALS]</code>

​	Eg. call ac.bat c (1/7)*3.5/(11+7) var4 r 4
​	OUTPUT: VAR4=0.0278



​	Eg. call ac.bat c 12*7/(11/7) var5 r 0
​	OUTPUT: VAR5=53