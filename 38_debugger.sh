#!/usr/bin/env bash

# Vars #########################################################################
name="Debugger"
versao="1.0.0"
dir_home="/home/${USER}/"
# Colors #
red="\033[31;1m"
close_color="\033[m"
# Config #
DEBUG="1"

# Functions ####################################################################
function _on_debug() {
  if [[ "$DEBUG" -eq "1" ]]; then
    echo -e "${red}+++++++++++++++++++Debugger On+++++++++++++++++++++"
    set -x
  fi
}

function _off_debug() {
  if [[ "$DEBUG" -eq "1" ]]; then
    set +x
    echo -e "+++++++++++++++++++Debugger Off+++++++++++++++++++++${close_color}"
  fi
}
for i in {1..10}; do echo "$i"; done

_on_debug
for i in {1..10}; do echo "$i"; done

_off_debug
for i in {1..10}; do echo "$i"; done
