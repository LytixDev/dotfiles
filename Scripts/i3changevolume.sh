#!/bin/sh
echo ""
case $BLOCK_BUTTON in
		1) /home/nic/Scripts/change-volume.sh 5 > /dev/null ;;
		3) /home/nic/Scripts/change-volume.sh -5 > /dev/null ;;
esac

