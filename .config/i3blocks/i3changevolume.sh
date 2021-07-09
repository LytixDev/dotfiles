#!/bin/sh
echo ""
case $BLOCK_BUTTON in
		1) ~/.config/i3/scripts/change-volume.sh 5 > /dev/null ;;
		3) ~/.config/i3/scripts/change-volume.sh -5 > /dev/null ;;
esac

