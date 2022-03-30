#!/usr/bin/env bash
process="gedit"

# until ps -e | grep "$process"; do
until pgrep "$process"; do
  echo "$process não está em execução..."; sleep 1s
done