#!/bin/sh

sudo rfkill unblock 0
bluetoothctl
sleep 2
power on
