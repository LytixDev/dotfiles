- Distro: Arch
- Display server: X11
- Window Manager: i3
- Bar: i3blocks
- Shell: zsh
- Text editor: neovim
- Terminal emulator: ghostty and st

i3, zsh, and neovim is super useful and probably accounts for 90% of the productivity gains from "ricing" my setup. The other stuff makes less of a difference and doesn't really matter all that much. I did considered moving to wayland and sway (i3 drop-in-replacement), but it was a bit annoying and I didn't experience any improvements.

--- Distro chronology ---
2019 - 2021 -> Ubuntu
2021 - 2022 -> Arch
2022 - 2024 -> Artix*
2024 - now  -> Arch on the laptop, Ubuntu on the desktop

* I switched to Artix because systemd is complicated, huge, and regularly messed up wifi and bluetooth stuff after waking my laptop from sleep. Artix using runit was a great alternative. I decided to switch back to Arch because glibc changed how they handled retrieving debug symbols and I could not for the life of me get it to work on Artix.   

--- Tidbits ---
To get natural scrolling and tapping on touchpad, copy 40-touchpad.conf to /usr/share/X11/xorg.conf.d/40-touchpad.conf.

To get rid of the annoying bell sound on error in xorg, simply remove or rename the file: `# mv /usr/share/sounds/freedesktop/stereo/bell.oga /usr/share/sounds/freedesktop/stereo/bastard.oga` It appears the file is loaded into memory, and so a restart of xorg is required.

To be able to poweroff without a password `# cp extra/nic /etc/sudoers.d/nic`

To be able to change the backlight you can change the file permissions: `# chmod a+rw /sys/class/backlight/intel_backlight/brightness`.

The packages required (+ some more for convenience) to get a system up and running is found in the `extra/packages` file
