#!/bin/bash
sudo mkdir -p /mnt/mathlanSSH
sudo sshfs -o allow_other -C $1@ssh.cs.grinnell.edu:/home/$1 /mnt/mathlanSSH 

