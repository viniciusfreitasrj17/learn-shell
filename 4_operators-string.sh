#!/usr/bin/env bash
########################################### 
# test -> if do shel
# alternativas:
# [[ cond = cond ]] -> bash
# [ cond = cond ] -> posix
########################################### 
# Operadores de String
# =   -> igual
# !=  -> diferente
# -n  -> não null
# -z  -> é null
########################################### 

echo "====================================="
echo "Testando Igualdade com Strings"
echo
echo "Digite a primeira String"; read str1
echo "Digite a segunda String"; read str2
echo
test "$str1" = "$str2"
echo "STDOUT: $?"
echo "====================================="
echo "Testando Diferença com Strings"
echo
echo "Digite a primeira String"; read str1
echo "Digite a segunda String"; read str2
echo
test "$str1" != "$str2"
echo "STDOUT: $?"
echo "====================================="
echo "Testando Não Nulo com Strings"
echo
echo "Digite a String"; read str1
echo
test -n "$str1"
echo "STDOUT: $?"
echo "Ou também podemos deixar apenas a variável"
test "$str1"
echo "STDOUT: $?"
echo "====================================="
echo "Testando Nulo com Strings"
echo
echo "Digite a String"; read str1
echo
test -z "$str1"
echo "STDOUT: $?"
echo "====================================="
