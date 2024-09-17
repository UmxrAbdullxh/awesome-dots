#!/bin/bash

battery_path="/sys/class/power_supply/BAT0"

if [ -d "$battery_path" ]; then
  capacity=$(cat "$battery_path/capacity")
  status=$(cat "$battery_path/status")

  if [ "$status" = "Charging" ]; then
    echo "$capacity%+"
  else
    echo "$capacity%"
  fi
else
  echo "N/A"
fi
