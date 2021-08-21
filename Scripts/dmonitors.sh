#!/bin/sh

intern="eDP1"
extern="HDMI1"

xrandr --output "$extern" --set audio force-dvi --mode 2560x1440
xrandr --output "$intern" --auto --output "$extern" --left-of "$intern"

