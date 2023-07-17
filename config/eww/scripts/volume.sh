#!/bin/bash

lvlalt=`pamixer --get-volume-human | awk -F'%' '{ print $1 }'`
zero="0%"
mute="muted"

icon() {
  lvl=`pamixer --get-volume-human`
  if [ "$lvl" == "$zero" ]; then
    echo " "
  elif [ "$lvl" == "$mute" ]; then
    echo " "
  else
    echo " "
  fi
}

if [[ $1 == icon ]]; then
  icon
fi