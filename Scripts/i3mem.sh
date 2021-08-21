#!/bin/sh
free -h | awk '/^Mem:/ {print $3 "/" $2}' | sed 's/Gi/GB/g; s/Mi/MB/g'
