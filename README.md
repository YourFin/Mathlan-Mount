# Mathlan-Mount
A tiny script to mount mathlan quickly on linux and OSX with as little hassle as possible.

## OSX and linux:
NOTE: You must have superuser (read: root) privilages to install sshfs if it is not on your machine already. If you don't know what this means don't worry about it.

1. Run `curl https://raw.githubusercontent.com/YourFin/Mathlan-Mount/master/install.sh | bash` in the directory you would like the script installed to install this.
2. `cd Mathlan-Mount`
3. Now any time you want to connect all you have to run is: `./mountmath.sh`, and enter your MATHLAN password in the prompted box!
4. Unmount with `umount /your/mounted/directory/here`, or by standard GUI methods.

## Windows:
Take a look at [win-sshfs](https://github.com/Foreveryone-cz/win-sshfs). The host should be `ssh.cs.grinnell.edu`, port 22.
