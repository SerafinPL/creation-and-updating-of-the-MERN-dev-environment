

FIRSTPATH=`pwd`
ENVDIR=~/.config/devEnvMint/

if [ ! -d "$ENVDIR" ]; then

  mkdir $ENVDIR

fi
cd $ENVDIR

cp -r $FIRSTPATH"/sources" $ENVDIR
cp $FIRSTPATH"/readme.md" $ENVDIR
cp $FIRSTPATH"LICENSE"

if [ ! -f  ~/.bash_aliases ]; then   
	touch ~/.bash_aliases
fi

echo "alias devenv='~/.config/devEnvMint/devEnvMint.sh'" >> ~/.bash_aliases
cd "$FIRSTPATH"
# . ~/.bashrc
exec bash




