
#!/bin/bash



ins-Brave(){
	infoUserInst "Brave"
	cd /.Installers
	curl -fsS https://dl.brave.com/install.sh | sh
	rm install.sh
	infoUserIned "Brave"
}
