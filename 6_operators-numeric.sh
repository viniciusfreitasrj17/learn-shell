#!/usr/bin/env bash
########################################### 
# Operadores Numéricos:
# 
# -lt   -> less then (menor que <)
# -le   -> less equal (menor ou igual <=)
# 
# -gt   -> greater then (maior que >)
# -ge   -> greater equal (maior ou igual >=)
# 
# -eq   -> equal (igual ===)
# -ne   -> not equal (não é igual !==)
########################################### 

#!/usr/bin/env bash
########################################### 
# Criando uma lombada eletrônica
# Limite é 80
# Limite de 5kn, que da 85
# Entre 80 à 85, exibe uma mensagem
# Passou de 85km, vai dar flash, multa! 
###########################################

# Gambiarra:
# echo "Lombada Eletrônica"
# echo
# read -p "Digite a sua velocidade: " velocidade
# echo
# [[ "$velocidade" -ge "80" ]] && \
# [[ "$velocidade" -le "85" ]] && \
# echo "Você está no limite, Cuidado"

# [[ "$velocidade" -ge "86" ]] && \
# echo "MULTA"

echo "Verificar se existe o programa"
echo
read -p "Digite o nome do programa: " res
[[ $(type -P "$res") ]] \
&& echo "EXISTE" \
|| echo "NAO EXISTE"
echo
echo
echo
echo "Testes iniciais de um programa"
# Verificando se o programa existe no sistema
[[ $(type -P firefox) ]] \
|| { echo "Necessita do firefox para executar o programa" ; exit 1 ;}
# Verificando se é root
[[ "$UID" -ne "0" ]] \
&& { echo "Necessita da root para executar o programa" ; exit 1 ;}