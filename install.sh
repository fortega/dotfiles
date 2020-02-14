#!/bin/bash

for i in $(ls -A)
do
    if [ $i != ".git" ] && [ $i != ".gitignore" ] && [ $i != "install.sh" ] && [ $i != "README.md" ]
    then
	if [ -h "$HOME/$i" ]
	then
	    echo "Skip $i"
	    continue
	elif [ -f "$HOME/$i" ] || [ -d "$HOME/$i" ]
	then
	    mv $HOME/$i $HOME/$i.backup
	elif [ -a "$HOME/$i" ]
	then
	    echo "Cannot continue"
	    stat $i
	    break
	fi
		
	ln -s $(pwd)/$i $HOME/$(basename $i)
    fi
done
gsettings set org.gnome.Terminal.Legacy.Settings headerbar false
