

FIRSTPATH=`pwd`
DIRECTORY='devEnvMint'

cd ~/.config/
if [ ! -d "$DIRECTORY" ]; then

  mkdir devEnvMint

fi
cd devEnvMint
# cp $FIRSTPATH/sources $DIRECTORY

if [ ! -f  ~/.bash_aliases ]; then   
	touch ~/.bash_aliases
fi

echo "alias devenv='~/.config/devEnvMint/devEnvMint.sh'" >> ~/.bash_aliases
cd "$FIRSTPATH"
# . ~/.bashrc
exec bash




