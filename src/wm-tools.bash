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

function get-screen-names () {
  xrandr --verbose | awk '
  /[:.]/ && hex {
    sub(/.*000000fc00/, "", hex)
    hex = substr(hex, 0, 26) "0a"
    sub(/0a.*/, "", hex)
    print "name=$( xxd -r -p <<< \42" hex "\42) ; display=\42" name "\42"
    hex=""
    name=""
  }
  hex {
    gsub(/[ \t]+/, "")
    hex = hex $0
  }
  /^[^ \t]+ (dis)*connected .*/ && length(hex) == 0 {
    name=$0
    sub(/[ \t]+.*$/, "", name)
  }
  /EDID.*:/ {
      hex=" "
  }' | while read l ; do
    eval `echo "$l"`
    echo "{ display: \"$display\" , name: \"$name\" }"
  done
}

function list-screens () {
  get-screen-names
}

function get-primary-screen () {
  xrandr | sed -En 's/^([^ ]+) connected primary.*$/\1/p'
}

function screen-operation () {
  XRANDR_OPERATION="$@"
  echo "Screen options are:"
  i=1
  list-screens |
  while read SCREEN; do
    echo "${i}) ${SCREEN}"
    i=$((i + 1))
  done
  read choice
  SECONDARY=$( list-screens | sed -n $(echo "${choice},${choice}p") | sed -r 's/.*display: "([^"]+)".*/\1/' )
  OP="xrandr ${XRANDR_OPERATION}"
  eval "${OP}"
}

function screen-adder () {
  XRANDR_PRIMARY=$(get-primary-screen)
  screen-operation '--output ${SECONDARY} --auto --right-of '"${XRANDR_PRIMARY}"
}

function screen-disconnect () {
  screen-operation '--output ${SECONDARY} --off'
}
