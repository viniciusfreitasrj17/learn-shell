#!/usr/bin/env bash

# path error files
file_log="/tmp/log.txt"

# logic system logs
if ls lll >/dev/null 2>>"$file_log"; then
  echo "Comando executado com sucesso"
else
  echo -e "$(date)\n" >>"$file_log" 
  echo "Opa, houve um erro, verifique em: $file_log"
fi