- Window Manager: i3
- Bar: i3blocks
- Shell: zsh
- Text editor: neovim

## Extra
To get natural scrolling and tapping on touchpad, copy 40-touchpad.conf to /usr/share/X11/xorg.conf.d/40-touchpad.conf.

To get rid of the annoying bell sound on error in xorg, simply remove or rename the file: `# mv /usr/share/sounds/freedesktop/stereo/bell.oga /usr/share/sounds/freedesktop/stereo/bastard.oga` It appears the file is loaded into memory, and so a restart of xorg is required.

To be able to poweroff without a password `# cp extra/nic /etc/sudoers.d/nic`

To be able to change the backlight you can change the file permissions: `# chmod a+rw /sys/class/backlight/intel_backlight/brightness`.

The packages required (+ some more for convenience) to get a system up and running is found in the `extra/packages` file
