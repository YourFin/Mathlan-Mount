#!/bin/bash
SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"
mkdir -p $SCRIPTPATH/mathlan-home-$1
sshfs -o allow_other -C $1@ssh.cs.grinnell.edu:/home/$1 /mnt/mathlanSSH 

