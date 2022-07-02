# AC Function 
## Description
It allows precise mathematical calculation with advanced math functions.

## Note
This project ***uses dependencies*** in order to work properly, so keep all the files together in the same folder/path.

### Author
**MICHAL BUKOWSKI**

# USAGE

	addition 				(+)			WORKS	syntax: x+y
	subtraction				(-)			WORKS	syntax: x-y
	multiplication				(*)			WORKS	syntax: x*y
	division				(/)			WORKS	syntax: x/y
	exponentiation				(^)			WORKS	syntax: XpowY	(X^Y)
	sqrt					(√)			WORKS	syntax: sqrt(x)
	natural logarithm			(log_n)			WORKS	syntax: log_n(x)
	degree to radian conv			(dtr)			WORKS	syntax: x[dtr]
	radian to degree conv			(rtd)			WORKS	syntax: x[rtd]
	sine 	(radian)			(sin)			WORKS	syntax: sin(x)
	cosine	(radian)			(cos)			WORKS	syntax: cos(x)




-------------------------------------------
Calculation usage:

<code>CALL AC.BAT C [CALCULATIONS] [OUTPUT VARIABLE]</code>

​	Eg. `call ac.bat c (1/7)*3.5/(11+7) var1`
​	Output: VAR1=0.02777777777777777777


-------------------------------------------
Rounding usage:

<code>CALL AC.BAT R [VALUE] [DECIMALS] [OUTPUT VARIABLE]</code>

​	Eg. call ac.bat r 0.02777777777777777777 4 var2
​	OUTPUT: VAR2=0.0278

​	Eg. call ac.bat r 1.9091 0 var3
​	OUTPUT: VAR3=2

-------------------------------------------
Calculation + rounding usage:

<code>CALL AC.BAT C [CALCULATIONS] [OUTPUT VARIABLE] R [DECIMALS]</code>

​	Eg. call ac.bat c (1/7)*3.5/(11+7) var4 r 4
​	OUTPUT: VAR4=0.0278

​	Eg. call ac.bat c 12*7/(11/7) var5 r 0
​	OUTPUT: VAR5=53

--------------------------------------------
Article- https://batch-man.com/evaluate-complex-math-expressions-in-batch/
Video- https://www.youtube.com/watch?v=dEBtgeLYiP8&ab_channel=BatchMan
