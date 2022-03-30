#!/usr/bin/env bash

# Operadores Aritméticos
# +   -> Adição
# -   -> Subtração 
# *   -> Multiplicação
# /   -> Divisão
# %   -> Módulo
# **  -> Exponenciação
# 
# Operadores Relacionais
# <   -> less then (menor que <)
# <=   -> less equal (menor ou igual <=)
# 
# >   -> greater then (maior que >)
# >=   -> greater equal (maior ou igual >=)
# 
# ==   -> equal (igual ===)
# !=   -> not equal (não é igual !==)
# 
# Operadores de Atribuição
# =   -> Atribui valor a variavel
# +=   -> Incrementa à uma variavel
# -=   -> Decrementa à uma variavel
# *=   -> Multiplica à uma variavel
# /=   -> Divide à uma variavel
# %=   -> Modula à uma variavel
# **=  -> Exponencia à uma variavel
# ++   -> Incrementa em 1
# --   -> Decrementa em 1
# 
# 
# Comando para aritmetica:
# expr 5 "*" 3    -> limitado, pois exige aspas e nao trabalha com casas decimais
# bc <<< " 5.265 * 3 "  -> mais completo e é uma linguagem
# ((5 > 10))    -> para testar com operadores relacionais, sem output
# ((5 + 10))    -> para testar com operadores aritmeticos, sem output
# let "5 + 5"    -> para testar com operadores aritmeticos, sem output
# echo "$(( 5 + 10 ))"    -> para testar com operadores relacionais ou realizar calculos, com output e mais rapido que o bc e expr
# 
# 

# Verificando se o usuário é root
(($UID == 0)) && { echo "Não pode acessar como usuário root"; exit 1 ;}

function _menu() {
  clear
  echo "------------------------"
  echo "1) + Soma"
  echo "2) - Subtração"
  echo "3) * Multiplicação"
  echo "4) / Divisão"
  echo "5) Sair"
  echo "------------------------"
  read -p "Escolha a opção: " opcao

  case "$opcao" in
    1) _soma ;;
    2) _subtracao ;;
    3) _multiplicacao ;;
    4) _divisao ;;
    5) exit 0 ;;
    *) { echo "Opção inválida"; exit 1 ;} ;;
  esac
}

function _input() {
  read -p "Primeiro número: " n1
  read -p "Segundo número: " n2

  if ! [[ "$n1" ]] || ! [[ "$n2" ]]; then echo -e "\nFavor entrar com o número"; sleep 2s; $1; fi
}

function _soma() {
  _input "_soma"
  total="$(( $n1 + $n2 ))"
  echo -e "\nResultado: $total"
  sleep 2s
  _menu
}

function _subtracao() {
  _input "_subtracao"
  total="$(( $n1 - $n2 ))"
  echo -e "\nResultado: $total"
  sleep 2s
  _menu
}

function _multiplicacao() {
  _input "_multiplicacao"
  total="$(( $n1 * $n2 ))"
  echo -e "\nResultado: $total"
  sleep 2s
  _menu
}

function _divisao() {
  _input "_divisao"
  total="$(( $n1 / $n2 ))"
  echo -e "\nResultado: $total"
  sleep 2s
  _menu
}

_menu
