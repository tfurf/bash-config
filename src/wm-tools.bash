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

function list-screens () {
  xrandr | grep "connected" | grep -v "disconnected" | cut -d' ' -f1
}

function get-primary-screen () {
  xrandr | sed -En 's/^([^ ]+) .*connected primary.*$/\1/p'
}

function screen-adder () {
  XRANDR_PRIMARY=$(get-primary-screen)
  echo "Screen options are:"
  i=1
  list-screens |
  for SCREEN in $(list-screens); do
    echo "${i}) ${SCREEN}"
    i=$((i + 1))
  done;
  echo "Choose one."
  read choice
  SECONDARY=$( list-screens | sed -n $(echo "${choice},${choice}p") )
  xrandr --output ${SECONDARY} --auto --right-of ${XRANDR_PRIMARY}
}
