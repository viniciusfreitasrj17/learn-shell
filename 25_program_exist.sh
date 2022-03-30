#!/usr/bin/env bash

red="\033[31;1m"
green="\033[32;1m"
close_color="\033[m"

(($#==0)) && { echo "Precisa passar pelo menos um parâmetro"; exit 1 ;}

while :; do
  (($#)) || break
  if type -P "$1" > /dev/null; then
    echo -e "${green}O Programa $1 existe${close_color}\n"
  else
    echo -e "${red}O Programa $1 NÃO existe${close_color}\n"
  fi

  shift
  # if (($#)); then shift; else break; fi
  # ou
  # (($#)) && shift || break
done