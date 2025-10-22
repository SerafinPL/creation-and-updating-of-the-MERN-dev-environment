

FIRSTPATH=`pwd`
ENVDIR=~/.config/devEnvMint/

if [ ! -d "$ENVDIR" ]; then

  mkdir $ENVDIR

fi
cd $ENVDIR

if [ -d "$$FIRSTPATH""/sources" ]; then
	echo "coping sources files"
  cp -r $FIRSTPATH"/sources" $ENVDIR
fi

# cp -r $FIRSTPATH"/sources" $ENVDIR
if [ -f "$$FIRSTPATH""/readme.md" ]; then
	echo "coping readme.md"
  cp $FIRSTPATH"/readme.md" $ENVDIR
fi
# cp $FIRSTPATH"/readme.md" $ENVDIR

if [ -f "$$FIRSTPATH""/LICENSE" ]; then
	echo "coping LICENSE"
	cp $FIRSTPATH"LICENSE" $ENVDIR
fi
# cp $FIRSTPATH"LICENSE" $ENVDIR

if [ ! -f  ~/.bash_aliases ]; then   
	touch ~/.bash_aliases
fi

echo "alias devenv='~/.config/devEnvMint/devEnvMint.sh'" >> ~/.bash_aliases
cd "$FIRSTPATH"
# . ~/.bashrc
exec bash




