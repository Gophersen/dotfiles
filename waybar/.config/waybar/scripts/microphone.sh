#!/usr/bin/env bash


mic_status=$(wpctl get-volume @DEFAULT_AUDIO_SOURCE@ | awk -F' ' '{print $3}')
mic_volume=$(wpctl get-volume @DEFAULT_AUDIO_SOURCE@ | awk -F' ' '{print $2}')

mic_volume_percent=$(echo "$mic_volume * 100" | bc | cut -d '.' -f 1)

if [[ "$mic_status" == *"[MUTED]"* ]]; then
  echo "{\"text\": \"  Muted\", \"class\": \"muted\"}"
else
  echo "{\"text\": \" ${mic_volume_percent}%\", \"class\": \"unmuted\"}"
fi
