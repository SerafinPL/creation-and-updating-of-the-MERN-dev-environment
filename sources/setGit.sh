#!/bin/bash

# Passing arguments to a function

make-GitCred() {

	# $1 -login $2 -email
	
	git config --global user.name $1

	git config --global user.email $2

	echo "User name was set as "$1" with e-mail "$2
}


