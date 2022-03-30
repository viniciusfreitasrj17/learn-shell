#!/usr/bin/env bash
# Exemplos: 
# resultado=$[5 + 5]
# resultado=$[10 / (2 * 5)] 

echo "Calculadora"
echo

read -p "Digite a operação[+,-,*,/]: " operacao
read -p "Digite o primeiro número: " num1
read -p "Digite o segundo número: " num2

resultado=$["$num1" "$operacao" "$num2"]

echo
echo "Resultado: $resultado"