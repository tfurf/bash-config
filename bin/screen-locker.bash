#!/bin/bash

function exists {
  #Check if function exists.
  hash ${1} 2>/dev/null || { return 1 ; }
  return 0
}

exists screen-locker || source $HOME/.bash/src/wm-tools.sh

screen-locker
