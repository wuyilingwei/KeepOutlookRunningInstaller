# KeepOutlookRunningInstaller

KeepOutlookRunning Add-in need reregist when outlook update.

In order to make it persistent, you need to add an additional FileName registry entry to it so that it can be automatically recognized.

Download `installer.bat` from [Release](https://github.com/wuyilingwei/KeepOutlookRunningInstaller/releases/)

Run script can automate install.

I chose the directory %ProgramFiles%\Microsoft Office\root\Office16\ADDINS\KeepOutlookRunning Add-in\, just like it is part of Outlook. 

If you want to uninstall it, just delete this folder.

## WARNING: READ IT BEFORE YOU RUN SCRIPT

The logic and support of the installation script are limited to Windows 10 1803 x64 and above.

Restart `outlook.exe` is needed, please save your file before running.
 
Administrator privileges are required because it involve writing the Program File directory, registering DLLs, and modifying the registry.
