#!/usr/bin/env bash
########################################### 
# Operadores Lógicos
# &&   -> E(AND)
# ||   -> OU(OR)
########################################### 

echo "====================================="
echo "Testando Igualdade com Strings"
echo
echo "Digite a primeira String"; read str1
echo "Digite a segunda String"; read str2
echo
# {} bloco de código, semelhante ao break ou return
test "$str1" = "$str2" \
&& { echo "$str1 é igual a $str2" ; exit 1 ;} \
|| echo "$str1 não é igual a $str2"
echo
echo "====================================="
echo "Verificando se tem Internet"
echo
sleep 1 ; echo "."
sleep 1 ; echo "."
sleep 1 ; echo "."
wget -q --spider "www.google.com" && \
echo "Tem internet" || \
echo "Não tem internet"
echo "====================================="
