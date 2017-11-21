#!/bin/bash

unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     machine=Linux;;
    Darwin*)    machine=Mac;;
    CYGWIN*)    machine=Cygwin;;
    MINGW*)     machine=MinGw;;
    *)          machine="UNKNOWN:${unameOut}"
esac

if ! sshfs --version; then
    echo "sshfs not found. Installing..."
    if [ "$machine" == "Mac" ] ; then
	echo "You appear to have a mac."
	echo "making sure git is installed. If prompted please install developer tools (not XCode)."
	git --version >/dev/null
	while ! git --version >/dev/null 2>/dev/null; do sleep 100 ; done
	echo "Done"
	echo "Checking if brew is installed."
	brew --version >/dev/null 2>/dev/null ||
	    echo "Brew not found... Installing..." &&
		/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" || echo "\n\nBrew unable to install. Make sure that you have administrative privilages, (i.e. sudo) and then run this again." && exit 1
	echo
	echo "Installing sshfs with brew..."
	brew cask install osxfuse
	brew install sshfs
    elif [ "$machine" == "Linux" ] ; then
	if apt-get --version >/dev/null 2>/dev/null; then
	    echo "You appear to be running a debian based distro."
	    if ! sshfs --version ; then
		echo "Installing sshfs..."
		sudo apt-get install sshfs
	    fi
	    if ! git --version 2>/dev/null >/dev/null ; then
		echo "Installing git..."
		sudo apt-get install git-core
	    fi
	elif pacman --version >/dev/null 2>/dev/null; then
	    echo "You appear to be running an arch based distro"
	    if ! sshfs --version ; then
		echo "Installing sshfs..."
		sudo pacman -S sshfs
	    fi
	    if ! git --version 2>/dev/null >/dev/null ; then
		echo "Installing git..."
		sudo pacman -S git
	    fi
	else
	    echo "You appear to be running a distro that the author of this script was too lazy to support. Please install sshfs through your distribution's package manager and then re-run this script."
	    exit 1
	fi
    else
	echo "You're running a weirdo UNIX machine. You don't need my bloody help doing this."
	exit 1
    fi
fi

echo "sshfs installed! Cloning repository from github..."
git clone https://github.com/YourFin/Mathlan-Mount.git

echo "Please enter your MATHLAN username:"
read userinput
echo $userinput > ./Mathlan-Mount/username

echo "Done installing!"
