#!/bin/bash

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
		* ) echo invalid response, exiting...;
			exit;;
    esac
    done
    echo start doing stuff...
	make-GitCred $login $mail
	
}


# Passing arguments to a function


make-GitCred() {

	# $1 -login $2 -email
	
	git config --global user.name $1

	git config --global user.email $2

	echo "User name was set as "$1" with e-mail "$2
}


