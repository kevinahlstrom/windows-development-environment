## Setup Windows 10 for Development

Installing all tools needed for Cloud Native Development. This setup can generally be used for every language but I personal optimized it for NodeJS / Javascript in combination with AWS.

# Install

## Setup your Windows 10 Environment
Below, you can see the all the things I need to actually go and work on stuff. If you like all those things, you can automate the installation thanks to the magic of [Boxstarter](http://boxstarter.org/). Simply start PowerShell as Administrator and run:

```
START http://boxstarter.org/package/nr/url?https://raw.githubusercontent.com/kevinahlstrom/windows-development-environment/master/boxstarter
```

1. Hyper: A better terminal for windows
1. Node, npm: Even though we use the WSL node to code some programs like hyper need it installed 
1. Editors / IDEs: Visual Studio Code and IntelliJ
1. Basics tools: VLC, GoogleChrome, 7zip.install, sysinternals, DotNet3.5
1. Activate Developer Mode (prerequisit for installing WSL)

## Activate WSL (Windows Subsystem for Linux)
Now go into hyper and run `bash` you are promted to install WSL and to give a username and password this takes some seconds. 

## Setup some defaults for WSL and make it the default shell for hyper
```
bash <(curl -s https://raw.githubusercontent.com/dennisseidel/windows-development-environment/master/configure_wsl.sh)
```
