#!/bin/bash

IMAGE=/tmp/i3lock.png
LOCK=~/Pictures/lockr.png
SCREENSHOT="scrot $IMAGE"
BLURTYPE="2x8"

$SCREENSHOT
convert $IMAGE -blur $BLURTYPE $IMAGE
convert $IMAGE $LOCK -gravity center -composite $IMAGE
i3lock -i $IMAGE
rm $IMAGE

while pgrep i3lock &>/dev/null 
do
	sleep 1
done
notify-send "Welcome back, Nicolai"
