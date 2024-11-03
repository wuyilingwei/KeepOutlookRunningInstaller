# KeepOutlookRunningInstaller

Little add-on to keep Outlook running when clicking on the exit button.

To exit Outlook after installing the add-on use File -> Exit

Credit goes to @Tim Eck on Superuser (https://superuser.com/users/78284/tim-eck) This script just automates the installation process and additionally installs the persistence patch.

## How to get it easily

Install Microsoft Visual C++ 2010 SP1 Redistributable Package [32 bit](https://download.microsoft.com/download/1/6/5/165255E7-1014-4D0A-B094-B6A430A6BFFC/vcredist_x86.exe) and [64 bit](https://download.microsoft.com/download/1/6/5/165255E7-1014-4D0A-B094-B6A430A6BFFC/vcredist_x64.exe) (both required for 64 bit Windows)

Download `installer.bat` from [Release](https://github.com/wuyilingwei/KeepOutlookRunningInstaller/releases/)

Run script can automate do all the things. DLL automatically download directly from the [Original author's repository](https://github.com/Ourselp/KeepOutlookRunning).

I chose install in the directory `%ProgramFiles%\Microsoft Office\root\Office16\ADDINS\KeepOutlookRunning Add-in\`, just like it is part of Outlook. ~~Microsoft really should make this option a built-in part, instead of relying on us to patch it in.~~

If you want to uninstall it, just delete this folder.

Don't ask me why it doesn't work, I don't know either, you should [ask the original author](https://github.com/Ourselp/KeepOutlookRunning/issues/new) of the dll.

## WARNING: READ IT BEFORE YOU RUN SCRIPT

The logic and support of the installation script are limited to Windows 10 1803 x64 and above.

Outlook New is not supported, only Outlook classic. 

Restart `outlook.exe` is needed, please save your file before running.
 
Administrator privileges are required because it involve writing the Program File directory, registering DLLs, and modifying the registry.
