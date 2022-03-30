#!/usr/bin/env bash

red="\033[31;1m"
close="\033[m"

clear
echo -e "\tDOS - Windows Emulator"
while :; do
  read -ep $'\033[31;1m>\033[m ' input
  if [[ "$input" = "cls" ]]; then clear; fi
done