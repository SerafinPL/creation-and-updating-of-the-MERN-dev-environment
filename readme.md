
# Linux Mint start & update dev environment.

Automating the creation and updating of my development environment on a fresh or used Linux Mint installation.

![Static Badge](https://img.shields.io/badge/Linux%20Mint%20xfce-22.1-ex?style=plastic&logo=linux&logoColor=%2343E55E&labelColor=%23000&color=%2343E55E)
![Static Badge](https://img.shields.io/badge/IDE%20vsCode-1.105.1-ex?style=plastic&color=blue&labelColor=%23000)
![Static Badge](https://img.shields.io/badge/bash-5.2.21-ex?style=plastic&logo=gnubash&logoColor=%234EAA25&labelColor=%23000&color=%234EAA25)
##

### Installation

```bash
sudo apt update
sudo apt install wget
wget https://github.com/SerafinPL/startingLinuxMint/blob/main/startingLinuxMint.tar.gz
tar –xvzf startingLinuxMint.tar.gz
cd startingLinuxMint
chmod 775 devEnvMint-install.sh
./devEnvMint-install.sh.tar.gz
 
```
##

### Documentation

 ```
 usage: devEnvMint [-h] [-a] [-b] [-c] [-d] [-g] [-k] [-r] [-s] [-v] [-x]

This script install some core programs for developers work with javascript.

OPTIONS:
   -a   Install all programs

   -b	Install Brave Browser

   -c	Install VS Code

   -d	Install Core Programs:
   	htop,terminator,speedometer,mc,git,nodejs,npm,cmatrix,xfce4-clipman-plugin,progress

	and UnInstall waste Programs:
	hypnotix,mintchat,warpinator,onboard,webapp-manager

    -g	add Git Credentials

    -h	Show this message

    -k	Install KeePassXC

	-r  Resume installed programs

    -s	Install Signal

    -w	Install DW Agent Service

    -v 	Print version

    -?	Show this message

```
##

### Usage/Examples

```bash
 devEnvMint
```
##

### License

[GNU GPL 3.0](https://choosealicense.com/licenses/gpl-3.0/)
##

![Logo](https://kubakoder.pl/_next/image?url=%2F_next%2Fstatic%2Fmedia%2Ffavicon.5d6e1adf.png&w=48&q=75)

### 👨🏻‍💻 Author: [@SerafinPL](https://www.github.com/serafinpl)

### 🌐 Author URI: [http://kubakoder.pl](http://kubakoder.pl)

##