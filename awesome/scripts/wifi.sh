#!/bin/bash

# Get the wireless interface name
interface=$(iwconfig 2>/dev/null | grep -m 1 "^[a-zA-Z0-9]" | cut -d' ' -f1)

if [ -z "$interface" ]; then
  echo "No WiFi|0"
  exit 0
fi

# Get SSID
ssid=$(iwconfig "$interface" | grep 'ESSID:' | awk '{print $4}' | sed 's/ESSID://g' | sed 's/"//g')

# Get signal strength
signal=$(iwconfig "$interface" | grep -i quality | awk '{print $2}' | sed 's/Quality=//g' | cut -d'/' -f1)

if [ -z "$ssid" ]; then
  echo "Disconnected|0"
else
  echo "$ssid|$signal"
fi
