#!/bin/bash
<<<<<<< HEAD
SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"
mkdir -p $SCRIPTPATH/mathlan-home-$1
sshfs -o allow_other -C $1@ssh.cs.grinnell.edu:/home/$1 /mnt/mathlanSSH 
=======
sudo mkdir -p /mnt/mathlanSSH
sudo sshfs -o allow_other -C $1@ssh.cs.grinnell.edu:/home/$1 /mnt/mathlanSSH 
>>>>>>> origin/master

