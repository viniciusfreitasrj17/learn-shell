#!/usr/bin/env bash

read -p "Qual seu nome? " nome
read -p "Qual sua idade? " idade
echo
echo "Seu nome é $nome."
echo "Sua idade é $idade."

echo
echo
echo

echo "Qual diretório você quer entrar?"
read -e diretorio

cd "$diretorio"
echo "Você está em: $(pwd)"

# 1º Processo: Chama o programa reading.sh
# 2º Processo: Programa executando
# 3º Processo: O comendo pwd foi executado em um subprocesso ou SHELL FILHO
