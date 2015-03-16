#!/bin/bash

function kodi-scan-video {
  [[ $# == 0 ]] && { HOST="rpi" ; PORT=80 ;}
  [[ $# == 1 ]] && { HOST="$1" ; PORT=80 ;}
  [[ $# == 2 ]] && { HOST="$1" ; PORT="$2" ;}
  curl --data-binary '{ "jsonrpc": "2.0", "method": "VideoLibrary.Scan", "id": "mybash"}' \
      -H 'content-type: application/json;' http://${HOST}:${PORT}/jsonrpc
  echo ""
}

function kodi-clean-video {
  [[ $# == 0 ]] && { HOST="rpi" ; PORT=80 ;}
  [[ $# == 1 ]] && { HOST="$1" ; PORT=80 ;}
  [[ $# == 2 ]] && { HOST="$1" ; PORT="$2" ;}
  curl --data-binary '{ "jsonrpc": "2.0", "method": "VideoLibrary.Clean", "id": "mybash"}' \
  -H 'content-type: application/json;' http://${HOST}:${PORT}/jsonrpc
  echo ""
}
