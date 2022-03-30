#!/usr/bin/env bash
# set -x

nome="marcos"
idade="26"
rg="27950844-4"
nome="${nome^}" # uppercase only first letter
echo "Eu sou $nome, tenho $idade e possuo o RG $rg"

nome="${nome,,}" # lower all letter
echo "Eu sou $nome, tenho $idade e possuo o RG $rg"

nome="${nome^^}" # uppercase all letter
echo "Eu sou $nome, tenho $idade e possuo o RG $rg"
