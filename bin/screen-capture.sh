#!/bin/bash   
timestamp="$(date +%Y%m%d_%H%M%S)"
targetbase="$HOME/screenshots"
mkdir -p $targetbase
[ -d $targetbase ] || exit 1
xwd | convert - $targetbase/$timestamp.png
