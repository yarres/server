#!/bin/bash

if [ -z "$DISPLAY" ]; then
  echo "DISPLAY is not set"
  exit 9
fi

if [ ! -d /tmp/.X11-unix ]; then
  echo "X11 socket not found"
  exit 9
fi

if [ ! -f /root/.Xauthority ] && [ ! -f /run/user/1000/gdm/Xauthority ]; then
  echo "Xauthority not found"
  exit 9
fi

./run.sh
