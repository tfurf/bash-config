#!/bin/bash

function exists {
  #Check if function exists.
  hash ${1} 2>/dev/null || { return 1 ; }
  return 0
}

exists kodi-scan-video || source $HOME/.bash/src/kodi-tools.bash

HOST=rpi
PORT=80

kodi-scan-video $HOST $PORT

