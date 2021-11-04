#!/bin/sh
amixer sget Master | awk '/^..Mono/ {print $4}' | sed 's/\[//; s/\]//'
