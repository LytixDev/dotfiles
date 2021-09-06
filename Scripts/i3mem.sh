#!/bin/sh
#free -h | awk '/^Mem:/ {print $3 "/" $2}' | sed 's/Gi/GB/g; s/Mi/MB/g'

mem=$(free -h | awk '/^Mem:/ {print $3 "/" $2}')

case $BLOCK_BUTTON in
		1)
			notify-send "Memory" "$mem"
			;;
esac

mem=$(echo $mem | sed 's/Gi//g; s/Mi//g; s/\.//g')

res=$(echo $mem | bc -l | sed "s/\.//" | cut -b 1,2)
echo $res%
