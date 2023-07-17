#!/bin/bash

dc="fully-charged"
nc="not charging"
batno="discharging"
batyes="charging"

icon() {
  state=`upower -d | grep "state" | awk -F":" 'NR==1{ print $2 }' | xargs`
  batlvl=`upower -d | grep "percentage" | awk -F":" 'NR==1{ print $2 }' | awk -F"%" '{ print $1 }' | xargs`
  if [ "$state" == "$nc" ]; then
    echo "󱐋"
  elif [ "$state" == "$dc" ]; then
    echo "󱐋"
  elif [ "$state" == "$batyes" ]; then
    echo "󱐋 "
  elif [ "$state" == "$batno" ]; then
    if [[ $batlvl -lt 20 ]]; then
      echo " "
    elif [[ $batlvl -lt 40 ]]; then
      echo " "
    elif [[ $batlvl -lt 60 ]]; then
      echo " "
    elif [[ $batlvl -lt 80 ]]; then
      echo " "
    elif [[ $batlvl -lt 100 ]]; then
      echo " "
    fi
  else
    echo "󰑓"
  fi
}

level() {
  echo -e `upower -d | grep "percentage" | awk -F":" 'NR==1{ print $2 }' | xargs`
}

if [[ $1 == icon ]]; then
  icon
elif [[ $1 == level ]]; then
  level
fi
