@echo off
rem Created by Ayaka7452

title Windows 11 Classic Menu Switcher

echo Usage: type '1' to enable classic menu, type '2' to recover to default, type nothing to exit.
echo Press Enter to confirm switching.
:swiproc
set /p choi=Choice:

if %choi%==1 (
reg.exe add "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /f /ve>nul
taskkill /im explorer.exe /f>nul
timeout /t 2>nul
start explorer.exe
echo Done.
) else if %choi%==2 (
reg.exe delete "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /va /f>nul
taskkill /im explorer.exe /f>nul
timeout /t 2>nul
start explorer.exe
echo Done.
) else (
echo Invalid option specified.
goto swiproc
)

echo Press any key to exit...
pause>nul
