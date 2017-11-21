#!/bin/bash
SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"
name="$(cat $SCRIPTPATH/username)"
if [ -z "$name" ] ; then
    echo "Username file not found; please enter your MATHLAN username:"
    read userinput
    echo $userinput > $SCRIPTPATH/username
    name="$userinput"
fi
mkdir -p $SCRIPTPATH/mathlan-home-$name
sshfs -o allow_other -C $name@ssh.cs.grinnell.edu:/home/$name $SCRIPTPATH/mathlan-home-$name &&
echo "Your mathlan home can now be found at $SCRIPTPATH/mathlan-home-$name !. Any changes made there will be mirrored in your mathlan account." &&
echo "To close the connection to mathlan, run:" &&
echo "umount $SCRIPTPATH/mathlan-home-$name"
