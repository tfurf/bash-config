#!/bin/bash

function exists {
  #Check if function exists.
  hash ${1} 2>/dev/null || { return 1 ; }
  return 0
}

exists screen-capture || source $HOME/.bash/src/wm-tools.sh

screen-capture

