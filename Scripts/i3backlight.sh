#!/bin/sh

xbacklight -get | cut -f1 -d"."
case $BLOCK_BUTTON in
		1) /home/nic/Scripts/change-backlight.sh 5 > /dev/null ;;
		3) /home/nic/Scripts/change-backlight.sh -5 > /dev/null ;;
esac

