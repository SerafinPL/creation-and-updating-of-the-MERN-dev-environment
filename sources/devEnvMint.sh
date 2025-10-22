#!/bin/bash





ENVDIR=~/.config/devEnvMint/
SOURCES=sources

VERSION=0.0.7

 echo ""
 cd $ENVDIR$SOURCES
 echo $ENVDIR$SOURCES

. infosLogging.sh 
. installer.sh
. checkPrograms.sh

echo "needed files are included"

PARAM=
# OPTION=
# FORCE=
DIRINST=$ENVDIR/dwAgent

while getopts “bcdghkrswv” PARAM
do
  case $PARAM in
    h | --help)
      usage
      exit 1
      ;;
    b | --brave)
    	#   installBrave
		if checkCommand brave-browser ; then
    		appIsInfo Brave
			brave-browser --version
		else	
	    	appIsNotInfo Brave
			installQuestion Brave
			installBrave
		fi ;;
	c | --code)
		if checkCommand code ; then
    		appIsInfo vsCode
			code -v
		else
			appIsNotInfo vsCode
			installQuestion vsCode
			installCode
		fi ;;
	d | --defaults)
	
		installCore ;;		
    g | --git)
    	addGitCred ;;
	k | --keepassxc)
    	#   installKeePassXC
		if checkCommand keepassxc ; then
	    	appIsInfo KeePassXC
			keepassxc -v
		else
	    	appIsNotInfo KeePassXC
			installQuestion KeePassXC
			ins-KeePassXC
		fi ;;	
	r | --resume)
		echo "devEnvMint version "$VERSION 

		if checkCommand brave-browser ; then
			brave-browser --version
		else
		    appIsNotInfo Brave
		fi

		if checkCommand code ; then
			code -v
		else
			appIsNotInfo vsCode
		fi

		if checkCommand keepassxc ; then
    		keepassxc -v
		else
	    	appIsNotInfo KeePassXC
		fi

		if checkCommand signal-desktop ; then
			echo
		else
	    	appIsNotInfo Signal
		fi

		;;

	s | --signal)
    	#   installSignal
		if checkCommand signal-desktop ; then
    		echo "Signal exist on system"
		else
	    	appIsNotInfo Signal
			installQuestion Signal
			installSignal
		fi ;;
	w | --dwagent)
		if [ -d "$DIRINST" ]; then
	  	  	appIsInfo dwAgent
			echo $DIRINST
		# ls $DIRINST
  		else
	    	appIsNotInfo dwAgent
			installQuestion dwAgent
        	installDwAgnet
		fi ;;	  
	v | --version)
		echo "devEnvMint version "$VERSION
		;;
	  
    ?)
    	usage
    	exit;;
  esac
done

echo ""



