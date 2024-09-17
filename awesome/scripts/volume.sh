#!/bin/bash

get_volume_amixer() {
  amixer -c 1 -M -D pulse get Master | grep -m 1 -o -E [[:digit:]]+% | tr -d "%"
}

get_volume_status() {
  amixer -c 1 -M -D pulse get Master | grep '\[off\]' >/dev/null && echo "mute" || echo "unmute"
}

volume=$(get_volume_amixer)
status=$(get_volume_status)

#output the volume
echo "${volume}|${status}"
