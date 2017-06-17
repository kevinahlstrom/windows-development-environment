## Setup Windows 10 for Development

Installing all tools needed for Cloud Native Development. This setup can generally be used for every language but I personal optimized it for NodeJS / Javascript in combination with AWS.

# Install

## Setup your Windows 10 Environment
Below, you can see the all the things I need to actually go and work on stuff. If you like all those things, you can automate the installation thanks to the magic of [Boxstarter](http://boxstarter.org/). Simply start PowerShell as Administrator and run:

```
START http://boxstarter.org/package/nr/url?https://raw.githubusercontent.com/dennisseidel/windows-development-environment/master/boxstarter
```

1. Hyper: A better terminal for windows
```
cinst -y hyper
```
1. Node, npm: Even though we use the WSL node to code some programs like hyper need it installed 
```
cinst -y nodejs.install
```
1. Editors / IDEs
```
cinst -y visualstudiocode
cinst -y intellijidea-community
```
1. Basics tools: 
```
cinst -y vlc
cinst -y GoogleChrome
cinst -y 7zip.install
cinst -y sysinternals
cinst -y DotNet3.5
cinst -y f.lux
```
4. Activate Developer Mode (prerequisit for installing WSL)
```
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModelUnlock" /t REG_DWORD /f /v "AllowDevelopmentWithoutDevLicense" /d "1"
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModelUnlock" /t REG_DWORD /f /v "AllowAllTrustedApps" /d "1"
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux
```
## Activate WSL (Windows Subsystem for Linux)
Now go into hyper and run `bash` you are promted to install WSL and to give a username and password this takes some seconds. 

## Setup some defaults for WSL and make it the default shell for hyper
clone this repo and then:
```
bash
./configure_wsl.sh
```