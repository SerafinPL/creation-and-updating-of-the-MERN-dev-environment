
#!/bin/bash

ins-KeePassXC(){
	
	infoExUpdate

	echo "Start fetch KeePassXC Repo..."
	sudo add-apt-repository ppa:phoerious/keepassxc -y
	echo "KeePassXC are fetched"

	echo "Start updating and installing KeePassXC..."
	infoExUpdate
	sudo apt install keepassxc -y
	echo "KeePassXC are installed"
}

