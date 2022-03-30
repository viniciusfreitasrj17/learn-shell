#!/usr/bin/env bash

# Sintaxe SELECT
# select variavel in "N1" "N2" "N3" "N4" "N5" "N6"; do
#   echo $variavel
# done

PS3="Selecione: " # variavel especial do select
select nome in ana camila luis carlos sair; do
  case $nome in
    camila) echo "Seu nome é $nome"    ;;
    carlos) echo "Seu nome é $nome"    ;;
    luis)   echo "Seu nome é $nome"    ;;
    ana)    echo "Seu nome é $nome"    ;;
    sair)   exit 0                     ;;
    
  # case $REPLY in # para trabalhar com números, ao inves dos nomes da variaveis
  #   1) echo "Seu nome é $nome"    ;;
  #   2) echo "Seu nome é $nome"    ;;
  #   3) echo "Seu nome é $nome"    ;;
  #   4) echo "Seu nome é $nome"    ;;
  #   5) exit 0                     ;;

    *)      echo "Não existe na lista" ;;
  esac
done