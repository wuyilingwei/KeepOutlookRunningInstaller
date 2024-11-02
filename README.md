# KeepOutlookRunningInstaller

KeepOutlookRunning Add-in need reregist when outlook update.

In order to make it persistent, need to add an additional FileName registry entry to it so that it can be automatically recognized.

Download `installer.bat` from [Release](https://github.com/wuyilingwei/KeepOutlookRunningInstaller/releases/)

Run script can automate do all the things. DLL automatically download directly from the [Original author's repository](https://github.com/Ourselp/KeepOutlookRunning).

I chose install in the directory `%ProgramFiles%\Microsoft Office\root\Office16\ADDINS\KeepOutlookRunning Add-in\`, just like it is part of Outlook. 

If you want to uninstall it, just delete this folder.

Don't ask me why it doesn't work, I don't know either, you should [ask the original author](https://github.com/Ourselp/KeepOutlookRunning/issues/new) of the dll.

## WARNING: READ IT BEFORE YOU RUN SCRIPT

The logic and support of the installation script are limited to Windows 10 1803 x64 and above.

Outlook New is not supported, only Outlook classic. 

Restart `outlook.exe` is needed, please save your file before running.
 
Administrator privileges are required because it involve writing the Program File directory, registering DLLs, and modifying the registry.
