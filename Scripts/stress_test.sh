#!/bin/bash

c=0
for f in *.sh; do
	bash "$f" 
	c=$((c+1))
	if [ $c -ge 7 ]; then
		break
	fi
done
