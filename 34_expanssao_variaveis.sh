#!/usr/bin/env bash

# Expansão de variáveis

## Expansão Condicional -> :
# -         -> Se a variável estiver nula retornar uma mensagem.
# Sintaxe   -> "${VARIAVEL:-TEXTO}"   , ex:
# echo "${variavel_nulla:-bem vazia}"
# echo "${variavel_nulla}"
# 
# =         -> Se a variável estiver nula defina/armazene uma mensagem.
# Sintaxe   -> "${VARIAVEL:=TEXTO}"   , ex:
# echo "${variavel_nulla:=bem vazia}"
# echo "${variavel_nulla}"
# 
# ?         -> Se a variável estiver nula retornar um erro.
# Sintaxe   -> "${VARIAVEL:?TEXTO}"   , ex:
# echo "${variavel_nulla:?erro aqui\!}"
# echo "${variavel_nulla}"
# 
# +         -> Se a variável estiver definida retornar uma mensagem.
# Sintaxe   -> "${VARIAVEL:+TEXTO}"   , ex:
# variavel="ola"
# echo "${variavel:+"nao esta vazia\!"}"
# echo "${variavel}"
# 
# 




# 
# 
## Expansão de String
# variavel="tesTando ExpanSão dE String"
# ^^      -> Converte todo texto digitado em uppercase, ex:
# echo "${variavel^^}"
# 
# ,,      -> Converte todo texto digitado em lowercase, ex:
# echo "${variavel,,}"
# 
# ^      -> Converte primeira letra do texto digitado em uppercase, ex:
# echo "${variavel^}"
# 
# ,      -> Converte primeira letra do texto digitado em lowercase, ex:
# echo "${variavel,}"
# 
# echo ${#variavel} # Retorna o comprimento da variável.
#
# echo ${variavel#tes} # Remove 'tes' se estiver no inicio da expressão.
#
# echo ${variavel%ing} # Remove 'ing' se estiver no final da expressão.
# 
# echo ${variavel:N}   #Imprime todos os caracteres a partir da posição 'N'.
# 
# echo ${variavel:N:M} # Imprime 'M' caracteres a partir da posição 'N'.
# 
# echo ${variavel: -N} # Imprime os últimos 'N' caracteres.
# 
# echo ${variavel: -N:M} # Imprime os últimos 'N' caracteres com 'M' comprimento.
# 
# echo ${variavel: -N: -M} # Imprime os últimos 'N' caracteres com menos 'M' comprimento.
# 
# echo ${variavel:N: -M} # Imprime os caracteres a partir da posição 'N' com menos 'M' comprimento.
# 
# echo ${variavel##*exp} # Remove tudo do inicio da expressão até 'exp' (inclusive).
#
# echo ${variavel%%exp*} # Remove tudo a partir de 'exp' em diante. (inclusive).
# 
# echo ${variavel/exp1/exp2} # Substitui 'exp1' por 'exp2' uma única vez.
# 
# echo ${variavel//exp1/exp2} # Substitui 'exp1' por 'exp2' recursivo.
# 
# echo ${variavel/#exp1/exp2} # Substitui 'exp1' por 'exp2' se estiver no inicio da expressão.
# 
# echo ${variavel/%exp1/exp2} # Substitui 'exp1' por 'exp2' se estiver no final da expressão.
# 
# echo ${variavel~} # Inverte a formatação (uppercase/lowercase) do primeiro caractere da expressão.
# 
# echo ${variavel~~} # Inverte a formatação (uppercase/lowercase) de todos os caracteres da expressão.
# 
# echo ${variavel} # O mesmo que $var. (não ambíguo)
# 
# echo ${!exp*} # Retorna todas com nomes que começam com 'exp'.
# 
# 
# 
# 