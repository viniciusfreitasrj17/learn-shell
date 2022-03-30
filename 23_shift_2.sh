#!/usr/bin/env bash
# Comando shift rebaixa os parametros, ex:
# o $1 $2 $3 vira $1 $2
# o antigo $1 fica unset
# o $2 vira $1
# e o $3 vira $2
# ficando $1 $2

while :; do
  sleep 0.5s
  echo "$1"
  shift
  shift



  # [[ $# ]] || break # essa verificação nao funcionaria pois
  # verifica se a variavel nao está nula, logo o 0 é true
  # no caso de (($#)) || break funcionaria pois numa
  # verificação aritmerica o 0 é false

  (($#)) || break
  # ou
  # if ! (($#));then break; fi
done
