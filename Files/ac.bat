@echo off

REM REQUIRED FILES !!!
if not exist bc.exe EXIT
if not exist readline4.dll EXIT


REM AUTHOR: MICHA£ BUKOWSKI  VER 1.1 
REM USING BC CALCULATOR 1.6 BY FREE SOFTWARE FOUNDATION, INC 



:comamrobic
set jedynka=%~1
set dwojka=%~2
set trojka=%~3
set czworka=%~4
set piatka=%~5
set szostka=%~6


if not defined jedynka goto :help
if defined szostka exit /b 1



if /i "%jedynka%"=="r" goto :okolo
if /i "%jedynka%"=="c" goto :oblicz


REM IS IT HELP COMMAND?
if defined jedynka (
if /i "%jedynka%"=="/?" goto :help
if /i "%jedynka%"=="/h" goto :help
if /i "%jedynka%"=="-h" goto :help
if /i "%jedynka%"=="help" goto :help
if /i "%jedynka%"=="-help" goto :help
if /i "%jedynka%"=="/help" goto :help
if /i "%jedynka%"=="-?" goto :help
if /i "%jedynka%"=="h" goto :help
if /i "%jedynka%"=="?" goto :help
)

exit /b 0




REM CALCULATION FUNCTION

:oblicz
setlocal enabledelayedexpansion
set "do_obl=%dwojka%"
set "do_obl=%do_obl:(=^(%"
set "do_obl=%do_obl:)=^)%"
set "do_obl=%do_obl:pow=^^^^^^^^%"
set "do_obl=%do_obl:log_n=l%"
set "do_obl=%do_obl:sin=s%"
set "do_obl=%do_obl:cos=c%"
set "do_obl=%do_obl:[rtd]=/0.01745329252%"
set "do_obl=%do_obl:[dtr]=*0.01745329252%"



set "do_var=%trojka%"
set "do_round=%czworka%"
set "do_round_n=%piatka%"


if defined do_round if /i not "%do_round%"=="r" exit /b 1

if defined do_round (if not defined do_round_n set "do_round_n=0")
if defined do_round call :spr_LICZBY "%do_round_n%"&if %errorlevel% equ 1 exit /b 1

FOR /F "usebackq delims=" %%v IN (`echo %do_obl% ^| bc.exe -l`) DO set "wynik=%%v"
if "%wynik:~0,1%"=="." set "wynik=0%wynik%"

if defined do_round goto :okolo_from_oblicz

if not defined do_var (endlocal & echo %wynik% & exit /b 0)
if defined do_var (endlocal & set "%do_var%=%wynik%" & exit /b 0)





REM CALCULATION+ROUNDING FUNCTION

:okolo_from_oblicz
if "%wynik:~0,1%"=="-" (set "wynik=%wynik:~1%"&set "valueujemna=1") else (set "valueujemna=")

for /f "tokens=1,2 delims=." %%a in ('echo %wynik%') do (
set $Number=%%a
set $Vtest=%%b
)

set /a okolovalue=!$Number!

if defined $Vtest set okolovalue2=!$Vtest:~0,%do_round_n%!

if defined $Vtest if not "!$Vtest:~%do_round_n%,1!"=="" if "!$Vtest:~%do_round_n%,1!" geq "5" set /a okolovalue2+=1

if not "%do_round_n%"=="0" (if defined $Vtest if not "%$Vtest:~0,1%"=="-" set okolovalue=%okolovalue%.%okolovalue2%) else (if defined $Vtest if "%$Vtest:~0,1%" geq "5" set /a okolovalue+=1)

if defined valueujemna set "okolovalue=-%okolovalue%"

endlocal & set "%do_var%=%okolovalue%"
exit /b 0




REM ROUNDING FUNCTION

:okolo
if defined piatka exit /b 1

setlocal EnableDelayedExpansion
set "$value=%dwojka%"
set "$ileround=%trojka%"
set "$okolooutput=%czworka%"

if not defined $okolooutput EXIT /B 1

if "%$value:~0,1%"=="-" (set "$value=%$value:~1%"&set "valueujemna=1") else (set "valueujemna=")

for /f "tokens=1,2 delims=." %%a in ('echo %$Value%') do (
set $Number=%%a
set $Vtest=%%b
)

set /a okolovalue=!$Number!

if defined $Vtest set okolovalue2=!$Vtest:~0,%$ileround%!

if defined $Vtest if not "!$Vtest:~%$ileround%,1!"=="" if "!$Vtest:~%$ileround%,1!" geq "5" set /a okolovalue2+=1

if not "%$ileround%"=="0" (if defined $Vtest if not "%$Vtest:~0,1%"=="-" set okolovalue=%okolovalue%.%okolovalue2%) else (if defined $Vtest if "%$Vtest:~0,1%" geq "5" set /a okolovalue+=1)

if defined valueujemna set "okolovalue=-%okolovalue%"

endlocal & set "%$okolooutput%=%okolovalue%"
exit /b 0




exit
:spr_LICZBY <str>
for /f "delims=0123456789" %%a in ("%~1") do exit /b 1
exit /b 0





set "do_obl=%dwojka%"
set "do_obl=%do_obl:(=^(%"
set "do_obl=%do_obl:)=^)%"
set "do_var=%trojka%"
set "do_round=%czworka%"
set "do_round_n=%piatka%"








EXIT

REM HELP (-H H /H) (-? ? /?) (-HELP HELP /HELP)
:help
@CHCP 1250>NUL
echo.
echo  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
echo  ;;;;;;;; CALCULATIONS USING AC.BAT ;;;;;;;;
echo  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
echo  ;;; AUTHOR: MICHA£ BUKOWSKI ;; VER 1.1 ;;;;
echo  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
echo  ;;;;;;; USING BC CALCULATOR 1.6 BY ;;;;;;;;
echo  ;;;;;; FREE SOFTWARE FOUNDATION, INC ;;;;;;
echo  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
echo.
echo -------------------------------------------
echo  Calculation Usage:
echo.
echo  CALL AC.BAT C [CALCULATIONS] [OUTPUT VARIABLE]
echo.
echo  Ex. call ac.bat c ^(1/7^)*3.5/^(11+7^) var1
echo  ( OUTPUT: VAR1=0.02777777777777777777 )
echo -------------------------------------------
echo.
echo -------------------------------------------
echo  Rounding Usage:
echo.
echo  CALL AC.BAT R [VALUE] [DECIMALS] [OUTPUT VARIABLE]
echo.
echo  Ex. call ac.bat r 0.02777777777777777777 4 var2
echo  ( OUTPUT: VAR2=0.0278 )
echo.
echo  Ex. call ac.bat r 1.9091 0 var3
echo  ( OUTPUT: VAR3=2 )
echo -------------------------------------------
echo.
echo -------------------------------------------
echo  Calculation + Rounding Usage:
echo.
echo  CALL AC.BAT C [CALCULATIONS] [OUTPUT VARIABLE] R [DECIMALS]
echo.
echo  Ex. call ac.bat c ^(1/7^)*3.5/^(11+7^) var4 r 4
echo  ( OUTPUT: VAR4=0.0278 )
echo.
echo  Ex. call ac.bat c 12*7/(11/7) var5 r 0
echo  ( OUTPUT: VAR5=53 )
echo -------------------------------------------
echo.
echo.
echo.
echo [SYNTAX LEGEND]
echo Expon [pow] (X^^Y)	-	XpowY
echo Sine x (radians) 	-	sin(x)
echo Cosine x (radians) 	-	cos(x)
echo Natural logharith	-	log_n(x)
echo Sqrt		-	sqrt(x)
echo Radian to degree	-	x[rtd]
echo Degree to radian	-	x[dtr]
echo.
exit /b 0