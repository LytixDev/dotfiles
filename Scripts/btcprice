#!/bin/sh
python /home/nic/Documents/python-projects/bitcointicker/main.py | grep 'id="lastTrade"' | sed 's/[^[0-9\.\-]]*/ /g;s/ \+/ /g;s/^ \+\| \+$//g; s/\..*//' > /home/nic/Scripts/btcprice.txt
pkill -SIGRTMIN+30 i3blocks
