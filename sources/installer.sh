#!/bin/bash

# Passing arguments to a function
. infosLogging.sh
. installSignal.sh
. installKeePassXC.sh
. MintCorePrograms.sh
. setGit.sh
. installCode.sh
. installBrawe.sh

# -b
installBrave() {
    ins-Brave
}
# -c
installCode() {
    ins-Code
}
# -d
installCore() {
    ins-Core
}
# -g
addGitCred() {
	gitCredQuestion
}

# -k
installKeePassXC() {
    ins-KeePassXC
}
# -s 
installSignal(){
	ins-Signal
}

installDwAgnet(){
	PATHName= pwd
	cd $ENVDIR
	mkdir dwAgent
	cd dwAgent
	wget "https://www.dwservice.net/download/dwagent.sh"
	sudo ./dwagent.sh
	cd $PATHName 
	
}
 