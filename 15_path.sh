#!/usr/bin/env bash

dir1="$PWD/bin"
dir2="$PWD/src"

if [[ -d "$dir1" ]] && [[ -d "$dir2" ]]; then
  echo "Diretórios encontrados"
else
  echo "Diretóris não existem"
  echo "Criando diretórios..."
  sleep 2; mkdir "$dir1" "$dir2"
  echo -e "\nDiretórios criados!"
fi