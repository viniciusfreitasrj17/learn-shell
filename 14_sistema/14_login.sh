#!/usr/bin/env bash

# Libraries ===================================================================#
source conf/login.conf
source lib/index

# Variables ===================================================================#
count_login=1
PS3="Selecione uma das opções: " # para o select
options=("firefox" "gedit" "terminator" "Sair") # array

# Verify ================================================================#


# Functions ===================================================================#
function _login() {
  # Login ===================================================================#
  while :; do
    read -p "Login: " _user
    read -t 5 -sp "Password: " _password 
    # read $'\n oi' usando caractere especiais no read

    if ! [[ "$user" = "$_user" ]] || ! [[ "$password" -eq "$_password" ]]; then
      if (($count_login == 3 )); then { echo -e "\nTentivas esgotadas"; exit 1 ;}; fi
      echo -e "\nDados incorretos"; ((count_login++)); continue
    fi

    break
  done

  echo -e "\nLogado... Verificando ambiente de trabalho"
  sleep 2s
  clear 

  _menu
}

function _menu() {
  echo "Bem vindo $(echo "$user" | tr '[:lower:]' '[:upper:]')"

  select program in "${options[@]}"; do
    case $REPLY in
      1) _run_program $program ;;
      2) _run_program $program ;;
      3) _run_program $program ;;
      4) { echo "Saindo ..."; exit 0 ;} ;;
      *) { echo "Opção inválida"; exit 1 ;} ;;
    esac
  done
}

function _run_program() {
  [[ $(type -P $1) ]] || { echo "$1 não instalado..."; exit 1 ;}
  $1 &
}

function _backup() {
  ! [[ $2 ]] || ! [[ $3 ]] \
  && { echo "Função backup necessita de dois argumentos"; exit 1 ;}

  echo "O arquivo de origem é: $2"
  echo "O arquivo de destino é: $3"
  # TODO: Criar função de backup
  # tar -cvf ${2}.tar $2
  # mv ${2}.tar $3
}

# Calls ============================================================#
case $1 in
  -l|--login) _login ;;
  -h|--help) _help ;;
  -b|--backup) _backup "$@" ;;
  *) echo "Use a opção -h, --help para abrir a ajuda."
esac

