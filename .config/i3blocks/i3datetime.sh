#!/bin/sh

#case $BLOCK_BUTTON in
		#1) echo "Left click action" ;;
		#3) echo "Right click action" ;;
#esac

date | awk '/.*/ {print $3 "." $2 " ("$1") " $4}'
