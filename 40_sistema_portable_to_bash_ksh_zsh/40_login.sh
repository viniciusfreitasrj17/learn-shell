#!/usr/bin/env sh

# Libraries ===================================================================#
source conf/login.conf
source lib/index

# Variables ===================================================================#
count_login=1
PS3="Selecione uma das opções: " # para o select
# options=("firefox" "gedit" "terminator" "Sair") # array

# Verify ================================================================#


# Functions ===================================================================#
_login() {
  # Login ===================================================================#
  while :; do
    printf '%s' "Login: "
    read _user
    printf '%s' "Password: "
    read _password
    # read $'\n oi' usando caractere especiais no read

    if ! [ "$user" = "$_user" ] || ! [ "$password" -eq "$_password" ]; then
      if (($count_login == 3 )); then { printf '%b' "\nTentivas esgotadas"; exit 1 ;}; fi
      printf '%b' "\nDados incorretos"; ((count_login++)); continue
    fi

    break
  done

  printf '%b' "\nLogado... Verificando ambiente de trabalho"
  sleep 2s
  clear 

  _menu
}

_menu() {
  printf '%s\n' "Bem vindo $(printf '%s\n' "$user" | tr '[:lower:]' '[:upper:]')"

  # select program in "${options[@]}"; do
  select program in "firefox" "gedit" "terminator" "Sair"; do
    case $REPLY in
      1) _run_program $program ;;
      2) _run_program $program ;;
      3) _run_program $program ;;
      4) { printf '%s\n' "Saindo ..."; exit 0 ;} ;;
      *) { printf '%s\n' "Opção inválida"; exit 1 ;} ;;
    esac
  done
}

_run_program() {
  [ "$(type -p $1)" ] || { printf '%s\n' "$1 não instalado..."; exit 1 ;}
  $1 &
}

_backup() {
  ! [ "$2" ] || ! [ "$3" ] \
  && { printf '%s\n' "Função backup necessita de dois argumentos"; exit 1 ;}

  printf '%s\n' "O arquivo de origem é: $2"
  printf '%s\n' "O arquivo de destino é: $3"
  # TODO: Criar função de backup
  # tar -cvf ${2}.tar $2
  # mv ${2}.tar $3
}

# Calls ============================================================#
case $1 in
  -l|--login) _login ;;
  -h|--help) _help ;;
  -b|--backup) _backup "$@" ;;
  *) printf '%s\n' "Use a opção -h, --help para abrir a ajuda."
esac

