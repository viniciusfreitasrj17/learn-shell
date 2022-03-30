#!/usr/bin/env bash

# Bash
echo -e \
"\033[31;1mHello\v\033[32;1mWorld\033[m"

# POSIX
printf '%25s\n' "$(tput setaf 4)People$(tput sgr0)"
