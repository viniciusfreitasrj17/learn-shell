#!/usr/bin/env bash
# Comando shift rebaixa os parametros, ex:
# o $1 $2 $3 vira $1 $2
# o antigo $1 fica unset
# o $2 vira $1
# e o $3 vira $2
# ficando $1 $2

while sleep 1s; do
  case $1 in
    1) echo "1"; shift ;;
    2) echo "2"; shift ;;
    3) echo "3"; shift ;;
    4) echo "4"; shift ;;
    5) echo "5"; shift ;;
    6) echo "6"; shift ;;
    7) echo "7"; shift ;;
    8) echo "8"; shift ;;
    9) echo "9"; shift ;;
    *) echo "end.";    ;;
  esac
done
