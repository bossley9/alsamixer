# alsamixer
a keybinding modification to the original
[alsamixer](https://github.com/alsa-project/alsa-utils)

This project is a modified version of the original alsamixer with vim-like keybindings.
For some reason the alsa-utils devs haven't ever changed the default keybindings, and the
default keybinds conflict with my workflow.

This project is only a stripped-down version of
[alsa-utils](https://github.com/alsa-project/alsa-utils).
Because I only wanted to modify alsamixer, I removed the other utilities.

## Installation
Installation is as simple as compilation with `make`, where `#` indicates elevated privileges.
```
# make clean install
```
You can uninstall using the same process.
```
# make uninstall
```

Unlike the original alsa-utils, I have included a pre-built makefile that simplifies the
installation process. Feel free to open any issues regarding the makefile or modify the
makefile to fit your operating system.
