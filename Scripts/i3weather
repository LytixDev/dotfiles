#!/bin/sh

case $BLOCK_BUTTON in
		1)
			weather=$(curl -Ss 'https://wttr.in?0&T&Q')
			notify-send "Weather" "$weather"
			;;
esac

curl -Ss 'https://wttr.in?0&T&Q' | cut -c 16- | head -2 | awk "/^\s[0-9]/" | sed "s/\s//g"
