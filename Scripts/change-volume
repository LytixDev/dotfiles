#!/bin/sh
vol=$(amixer sget Master | awk '/^..Mono/ {print $4}' | sed 's/\[//; s/\]//; s/\%//')
new_vol=$(($vol + $1))

if [[ $new_vol -ge 100 ]]; then
	new_vol=100
elif [[ $new_vol -le 0 ]]; then
	new_vol=0
fi

amixer set Master $new_vol%
pkill -SIGRTMIN+10 i3blocks
