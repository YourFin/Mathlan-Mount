#!/bin/bash
sudo sshfs -o allow_other -C $1@ssh.cs.grinnell.edu:/home/$1 /mnt/mathlanSSH 

