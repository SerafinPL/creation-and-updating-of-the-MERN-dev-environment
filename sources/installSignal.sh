#!/bin/bash


ins-Signal(){

	echo "Start fetch Signal Repo..."
	cd /.Installers

	wget -O- https://updates.signal.org/desktop/apt/keys.asc | gpg --dearmor > signal-desktop-keyring.gpg;
	cat signal-desktop-keyring.gpg | sudo tee /usr/share/keyrings/signal-desktop-keyring.gpg > /dev/null
	echo 'deb [arch=amd64 signed-by=/usr/share/keyrings/signal-desktop-keyring.gpg] https://updates.signal.org/desktop/apt xenial main' |\
	sudo tee /etc/apt/sources.list.d/signal-xenial.list
	echo "Signal Repo are fetched."

	echo "Start updating and installing Signal.."
	sudo apt update
	sudo apt install signal-desktop -y
	rm signal-desktop-keyring.gpg
	echo "Signal are installed."

}