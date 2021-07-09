bat_data=$(upower -i /org/freedesktop/UPower/devices/battery_BAT0)
state=$(echo $bat_data | sed "s/.*state: //; s/\s.*//")
time_to=$(echo $bat_data | sed "s/.*time//; s/\spercentage.*//")

notify-send "Battery" "State: $state\nTime$time_to"
