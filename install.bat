@echo off

title checking for admin rights
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
if '%errorlevel%' NEQ '0' (
title Waiting for the Adminstrator
goto UACPrompt
) else ( goto start )
:UACPrompt
echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\getadmin.vbs"
"%temp%\getadmin.vbs"
exit /B
:start
title KeepOutlookRunning Installer

echo Downloading KeepOutlookRunning DLL from GitHub

curl -L https://github.com/Ourselp/KeepOutlookRunning/raw/refs/heads/master/KeepOutlookRunning-64bit.dll -o KeepOutlookRunning-64bit.dll

timeout /t 3 /nobreak >nul

echo Installing KeepOutlookRunning Add-in

mkdir "%ProgramFiles%\Microsoft Office\root\Office16\ADDINS\KeepOutlookRunning Add-in" 2>nul

Xcopy KeepOutlookRunning-64bit.dll "%ProgramFiles%\Microsoft Office\root\Office16\ADDINS\KeepOutlookRunning Add-in\" /Y

timeout /t 3 /nobreak >nul

echo Registering KeepOutlookRunning Add-in
reg add "HKEY_LOCAL_MACHINE\Software\Microsoft\Office\Outlook\Addins\KeepOutlookRunningCOMAddin.Connect" /v "Description" /t REG_SZ /d "Keep Outlook Running COM Addin" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Office\Outlook\Addins\KeepOutlookRunningCOMAddin.Connect" /v "FriendlyName" /t REG_SZ /d "Keep Outlook Running COM Addin" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Office\Outlook\Addins\KeepOutlookRunningCOMAddin.Connect" /v "LoadBehavior" /t REG_DWORD /d 3 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Office\Outlook\Addins\KeepOutlookRunningCOMAddin.Connect" /v "FileName" /t REG_SZ /d "%ProgramFiles%\Microsoft Office\root\Office16\ADDINS\KeepOutlookRunning Add-in\KeepOutlookRunning-64bit.dll" /f

reg add "HKEY_CURRENT_USER\Software\Microsoft\Office\Outlook\Addins\KeepOutlookRunningCOMAddin.Connect" /v "Description" /t REG_SZ /d "Keep Outlook Running COM Addin" /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Office\Outlook\Addins\KeepOutlookRunningCOMAddin.Connect" /v "FriendlyName" /t REG_SZ /d "Keep Outlook Running COM Addin" /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Office\Outlook\Addins\KeepOutlookRunningCOMAddin.Connect" /v "LoadBehavior" /t REG_DWORD /d 3 /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Office\Outlook\Addins\KeepOutlookRunningCOMAddin.Connect" /v "FileName" /t REG_SZ /d "%ProgramFiles%\Microsoft Office\root\Office16\ADDINS\KeepOutlookRunning Add-in\KeepOutlookRunning-64bit.dll" /f


echo KeepOutlookRunning Add-in installed successfully, restarting Outlook in 3 seconds

timeout /t 3 /nobreak >nul

taskkill /f /im outlook.exe >nul
start outlook

echo KeepOutlookRunning Add-in installed successfully, Enjoy!
echo installer will close in 5 seconds
timeout /t 5 /nobreak >nul