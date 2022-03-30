#!/usr/bin/env bash

versaoLinux() {
  local version=$(cat /etc/os-release) # variavel local, funciona apenas na função
  echo "$version"
}

echo -e "A versão do Linux é: \n"
versaoLinux
#######################################################################
echo -e "\n\n\n"

parametros() {
  [[ "$1" ]] && echo "Não é nula" || echo "É nula"
}

parametros "$@" # || $1 as funções têm seus próprios ambientes
#######################################################################
echo -e "\n\n\n"

statusSaida() {
  local diretorio="/home/aaa"
  ls "$diretorio"
  # [[ "$?" -eq "0" ]] || exit 1
  [[ "$?" -eq "0" ]] || return 1 
  # exit nao deve ser usado numa função, nem caso use return 
  # pois sairá apenas da funçãoe nao do programa todo
}

statusSaida
echo "$?"
