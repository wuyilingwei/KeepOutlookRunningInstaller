# KeepOutlookRunningInstaller

KeepOutlookRunning Add-in need reregist when outlook update.

In order to make it persistent, you need to add an additional FileName registry entry to it so that it can be automatically recognized.

Run (THIS)[https://github.com/wuyilingwei/KeepOutlookRunningInstaller/raw/refs/heads/main/install.bat] script can automate this process.

I chose the directory %ProgramFiles%\Microsoft Office\root\Office16\ADDINS\KeepOutlookRunning Add-in\, just like it is part of Outlook. 

If you want to uninstall it, just delete this folder.

Warning: the logic and support of the installation script are limited to Windows 10 1803 x64 and above.
