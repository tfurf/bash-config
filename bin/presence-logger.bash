#!/bin/bash

dbus-monitor --session "type='signal',interface='org.gnome.ScreenSaver'" |\
  while read l ;
  do
    if [[ $(grep -c "boolean false" <<< "$l") -eq 1 ]];
    then
      logger -t "screen-lock-state" "Screen unlocked."
    elif [[ $(grep -c "boolean true" <<< "$l") -eq 1 ]];
    then
      logger -t "screen-lock-state" "Screen locked."
    fi
  done

