#!/bin/bash

if [ ! -d $HOME/.config  ] ; then
	echo ".config folder not present, creating..."
	mkdir $HOME/.config
fi

echo -e "\nCopying basic config files..."
cp .zshrc $HOME/
cp .vimrc $HOME/
cp -r .config/nvim $HOME/.config/
cp -r .vim $HOME/

echo -e "\nChecking packages..."
if [ "$(uname | grep -i darwin)" != "" ] ; then
	echo "macOS detected"
	brew help &> /dev/null
	if [ $? != 0 ] ; then
		echo "Homebrew not installed, aborting..."
		exit 1
	fi
	for pkg in neovim nodejs yarn; do
		echo "Checking $pkg..."
		brew info $pkg | grep -i "not installed" &> /dev/null
		if [ $? == 0 ] ; then
			echo "$pkg missing, installing..."
			brew install $pkg
			if [ $? != 0 ] ; then
				echo "Error installing $pkg, aborting..."
				exit 1
			fi
		fi
	done
elif [ "$(uname | grep -i linux)" != "" ] ; then
	echo "Linux system detected, assuming Debian"
	for pkg in neovim nodejs cmdtest; do
		echo "Checking $pkg..."
		dpkg -s $pkg &> /dev/null
		if [ $? != 0 ] ; then
			echo "$pkg missing, installing..."
			sudo apt-get install $pkg
			if [ $? != 0 ] ; then
				echo "Error installing $pkg, aborting..."
				exit 1
			fi
		fi
	done
else
	echo "Unknown system, aborting..."
	exit 1
fi

echo -e "\nInstalling vim-plug..."
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo -e "\nInstalling vim plugins..."
nvim +PlugInstall +qall

srceryPath=".local/share/nvim/plugged/srcery-vim/colors/srcery.vim"
ls $HOME/$srceryPath &> /dev/null
if [ $? == 0 ] ; then
	ln -s -f $HOME/$srceryPath $HOME/.vim/colors/
fi

echo -e "\n...done"
exit 0
