# Mathlan-Mount
Ever wanted to do your CS homework NOT on mathlan, but still needed access to your mathlan account? This script is for you!

It creates a folder, just like any other on your system, that mirrors your home directory on mathlan; so any changes you make in it also occur in your mathlan folder.

Please note that it is bad form to automatically execute code from the internet, so you should at least check out the scripts getting run to make sure I'm not seriously comprimising your computer :)

## OSX and linux:
NOTE: You must have superuser (read: root) privilages to install sshfs if it is not on your machine already. If you don't know what this means don't worry about it.

1. Run `curl https://raw.githubusercontent.com/YourFin/Mathlan-Mount/master/install.sh | bash` in the directory you would like the script installed to install this.
2. `cd Mathlan-Mount`
3. Now any time you want to connect all you have to run is: `./mountmath.sh`, and enter your MATHLAN password in the prompted box!
4. Unmount with `umount /your/mounted/directory/here`, or by standard GUI methods.

## Windows:
Take a look at [win-sshfs](https://github.com/Foreveryone-cz/win-sshfs). The host should be `ssh.cs.grinnell.edu`, port 22.
