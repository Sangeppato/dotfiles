#!/bin/bash

if [ ! -d $HOME/.config  ] ; then
	echo ".config folder not present, creating..."
	mkdir $HOME/.config
fi

echo "Copying basic config files..."
cp -r .config/nvim $HOME/.config/
cp .zshrc $HOME/
cp .vimrc $HOME/
cp -r .vim $HOME/

echo -e "\nInstalling vim-plug..."
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo -e "\nChecking packages..."
if [ "$(uname | grep -i linux)" = "" ] ; then
	brew install nodejs yarn
else
	echo "Linux system detected, assuming Debian"
	for pkg in neovim nodejs cmdtest; do
		echo "Checking $pkg..."
		dpkg -s $pkg &> /dev/null
		if [ $? != 0 ] ; then
			"$pkg missing, installing..."
			sudo apt-get install $pkg
			if [ $? != 0 ] ; then
				echo "Error installing $pkg, abort"
				exit 1
			fi
		fi
	done
fi

echo -e "\nInstalling vim plugins..."
nvim +PlugInstall +qall

srceryPath=".local/share/nvim/plugged/srcery-vim/colors/srcery.vim"
ls $HOME/$srceryPath &> /dev/null
if [ $? == 0 ] ; then
	ln -s -f $HOME/$srceryPath $HOME/.vim/colors/
fi

echo -e "\n...done"
exit 0
