@echo off
cls
Title Ac Function Demo File - www.batch-man.com
Cd Files

Echo. Calculating value of 'PI'
Call AC C "355/113" Pi
Echo. Pi = %Pi%
Echo.
Echo. Rounding off 'Pi'
Call AC R "%Pi%" 3 _New_Pi
Echo. _New_Pi = %_New_pi%
echo.
Echo. Calculating value of '10pow2' ^(exponentation, power^)
Call AC C "10pow2" Expn
echo. Exponentation = %Expn%
echo.
Echo. Calculating value of 'sin(2)' [in radians]
Call AC C "sin(2)" sintest
echo. Sin 2 = %sintest%
echo.
Echo. Calculating natural logharitm of 'log_n(2)'
Call AC C "log_n(2)" logtest
echo. N.Logharitm = %logtest%
echo.
Echo. Converting from radians to degrees '1[rtd]'
Call AC C "1[rtd]" rtdtest
echo. 1 rad = %rtdtest% deg
echo.
Echo. Converting from degrees to radians '1[dtr]'
Call AC C "1[dtr]" dtrtest
echo. 1 deg = %dtrtest% rad
echo.
Echo. Calculating value of 'sqrt(81)'
Call AC C "sqrt(81)" sqrttest
echo. sqrt(81) = %sqrttest%


Pause>nul
Exit /b