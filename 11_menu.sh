#!/usr/bin/env bash

while :; do
  clear
  echo \
  "#================================#
1) Abrir o Firefox
2) Abrir o Gedit
3) Abrir o Terminal

4) Sair
#================================#
  "
  read -p "Selecione uma das opções: " opcao

  if [[ "$opcao" -eq "1" ]]; then
    firefox &
  elif [[ "$opcao" -eq "2" ]]; then
    gedit &
  elif [[ "$opcao" -eq "3" ]]; then
    terminator &
  elif [[ "$opcao" -eq "4" ]]; then
    echo; echo "Saindo do programa..."; exit 0
  else
    { echo "Opção Inválida"; exit 1 ;}
  fi
done