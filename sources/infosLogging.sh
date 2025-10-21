#!/bin/bash

appIsInfo(){
   	echo -e "Application "$1" exist, check version:"
	echo ""

}

appIsNotInfo(){
   	echo -e $1 " does not exist!"
	echo ""
}

infoUserUnst () {
echo  "start uninstall " $1 "."
}

infoUserUned () {
echo  "uninstall " $1 " is DONE!"
}

infoUserInst () {
echo  "Start installing " $1 "..."
}

infoUserIned () {
echo $1 " are installed!"
}

infoExUpdate () {
echo -e "start system updates..."
sudo apt update -y
echo -e "system updates done."
}

infoExUpgrade () {
echo -e "start updates..."
sudo apt update -y
echo -e "updates done"
echo -e "start updates..."
sudo apt upgrade -y
echo -e "updates done"
}

infoExInstall() {
echo -e "start updates..."
sudo apt update -y
echo -e "updates done"
echo -e "start updates..."
sudo apt upgrade -y
echo -e "updates done"
}


installQuestion(){

	while true; do

	read -p "Do you want to install?"$1" (y/n) " yn

	case $yn in 
		[yY] ) 
			echo ok, we will proceed;
			break;;
		[nN] ) 
			echo exiting...;
			exit;;
		* ) echo invalid response;;
    esac
    done
    echo start doing stuff...
}

gitCredQuestion(){

	while true; do

	read -p "Fill Your github login: " login
	

	read -p "Fill Your github e-mail: " mail
	echo will we proceed with:
	echo login: $login 
	echo e-mail: $mail
	
	read -p "Do You agree? (y/n) " yn


	case $yn in 
		[yY] ) 
			echo ok, we will proceed with $login and $mail.;
			break;;
		[nN] ) 
			echo ok, exiting...;
			exit;;
		* ) echo invalid response;;
    esac
    done
    echo start doing stuff...
	make-GitCred $login $mail
	
}


usage(){ 
    cat << EOF
usage: $0 [-h | -?] | [-abcdgkrsv]

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

EOF
}
