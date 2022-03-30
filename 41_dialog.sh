#!/usr/bin/env bash

dialog  --title "Begin"               \
        --msgbox "Beginner Software"  \
        0 0

text="
Select one option below
You can use DIRECIONAL and ENTER to select
"
while :; do
  menu=$(
    dialog  --stdout                    \
            --title "MENU"              \
            --help-button               \
            --menu "$text"              \
            0 0 0                       \
            "Internet" "Using Firefox"  \
            "Ternimal" "Using Terminal"
  )

  status="$?"
  if [[ "$status" = "1" ]]; then
    break
  elif [[ "$status" = "2" ]]; then
    dialog --msgbox "Help Box" 0 0
  elif [[ "$menu" = "Internet" ]]; then
    firefox 1>/dev/null 2>&1 &
  elif [[ "$menu" = "Ternimal" ]]; then
    terminator 1>/dev/null 2>&1 &
  fi
done

  # [[ "$?" = "1" ]] && {
  # (("$?")) && {
  #   dialog  --sleep 2            \
  #           --infobox "Canceled" \
  #           0 0
  #   clear
  # }
  