#!/bin/bash

function kodi-scan-video {
  HOST=$1
  PORT=$2
  curl --data-binary '{ "jsonrpc": "2.0", "method": "VideoLibrary.Scan", "id": "mybash"}' \
      -H 'content-type: application/json;' http://${HOST}:${PORT}/jsonrpc
}

function kodi-clean-video {
  HOST=$1
  PORT=$2
  curl --data-binary '{ "jsonrpc": "2.0", "method": "VideoLibrary.Clean", "id": "mybash"}' 
  -H 'content-type: application/json;' http://${HOST}:${PORT}/jsonrpc
}
