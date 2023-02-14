#!/bin/bash

export DISPLAY=":0.0"

i=0

while [ $i -lt 12 ]; do # 12 five-second intervals in 1 minute

  if [ $(xrandr |grep -sw 'connected' |wc -l) == 1 ]; then
    ~/.screenlayout/internal_only.sh
  elif [ $(xrandr |grep -sw 'connected' |wc -l) == 3 ];  then
    ~/.screenlayout/home_stack_dual_externals.sh
  fi

  echo $(xrandr |grep -sw 'connected' |wc -l)

  i=$(( i + 1 ))
  sleep 5

done

