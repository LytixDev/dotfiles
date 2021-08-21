#!/bin/sh

intern="eDP1"
extern="HDMI1"
highres="2560x1440"
p1080="1920x1080"

xrandr --output "$extern" --set audio force-dvi --mode "$p1080"
xrandr --output "$intern" --auto --output "$extern" --left-of "$intern"

