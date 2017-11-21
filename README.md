# Mathlan-Mount
A tiny script to mount mathlan quickly on linux and OSX

## OSX

1. Install brew if you haven't already: /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

2. Run `brew cask install osxfuse`

3. Run `brew install sshfs`

Downloading the the script

1. sshfs must be installed for this to work ([OSx link](https://github.com/osxfuse/osxfuse/wiki/SSHFS)) ([direct link to download](https://github.com/osxfuse/sshfs/releases/download/osxfuse-sshfs-2.5.0/sshfs-2.5.0.pkg)). On linux this will be `sudo apt-get install sshfs` or `sudo [os-package-manager-install] sshfs`

2. `git clone https://github.com/YourFin/Mathlan-Mount.git` in the folder you want to load this in

If you're on OS

`cd Mathlan-Mount`

`./mountmath.sh $USERNAME` where `$USERNAME` is your mathlan username.

You should be prompted first for your computer password, and then your mathlan password.
