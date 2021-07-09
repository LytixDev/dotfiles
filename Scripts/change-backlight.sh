#!/bin/sh
val=$(xbacklight -get | cut -f1 -d".")
new_val=$(($val + $1))

if [[ $new_val -ge 100 ]]; then
	new_val=100
elif [[ $new_val -le 0 ]]; then
	new_val=0
fi

xbacklight -set $new_val
