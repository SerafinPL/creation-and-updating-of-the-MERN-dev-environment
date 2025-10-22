
#!/bin/bash



ins-Brave(){
	infoUserInst "Brave"
	PATHName= pwd
	cd $ENVDIR
	curl -fsS https://dl.brave.com/install.sh | sh
	rm install.sh
	infoUserIned "Brave"
	cd $PATHName 

}
