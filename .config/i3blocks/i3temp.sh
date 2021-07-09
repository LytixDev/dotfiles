#/bin/sh
sensors | awk '/^Package/ {print $4}'
