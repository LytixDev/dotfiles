#!/bin/sh
bat_data=$(upower -i /org/freedesktop/UPower/devices/battery_BAT0)
info="battery"
case $BLOCK_BUTTON in
		1)
			state=$(echo $bat_data | sed "s/.*state: //; s/\s.*//")
			time_to=$(echo $bat_data | sed "s/.*time//; s/\spercentage.*//")
			notify-send "Battery" "State: $state\nTime$time_to"
			;;
esac

percentage=$(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | awk '/^.*percentage/ {print $2}')
raw=$(echo $percentage | cut -f1 -d"%")

if [ $raw -le 20 ]
then
	notify-send -u "critical" "Battery low $percentage"
fi

echo $percentage
