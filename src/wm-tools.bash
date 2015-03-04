#!/bin/bash

function screen-capture () {
  timestamp="$(date +%Y%m%d_%H%M%S)"
  targetbase="$HOME/screenshots"
  mkdir -p $targetbase
  [ -d $targetbase ] || exit 1
  xwd | convert - $targetbase/$timestamp.png
}

function screen-locker () {
  xset dpms force off
  gnome-screensaver-command -l
}

