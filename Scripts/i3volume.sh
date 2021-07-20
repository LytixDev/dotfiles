#!/bin/sh
amixer sget Master | awk '/^..Mono/ {print $4}' | sed 's/\[//; s/\]//'
case $BLOCK_BUTTON in
		1) /home/nic/Scripts/change-volume.sh 5 > /dev/null ;;
		3) /home/nic/Scripts/change-volume.sh -5 > /dev/null ;;
esac

