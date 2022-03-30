#!/usr/bin/env bash

# * Strng ÚNICA
# @ Strings PROTEGIAS
# ! Índices do array (quando nao associativos)
# # Quantidade de itens do array  (quando nao associativos)

# Arrays com os índices ########################################################
nome[0]="Marcos"
nome[1]="Vinicius"
nome[2]="Carlos"
nome[3]="Antônio"
echo "${nome[0]}" # chamando item por índice
echo "${nome[1]}"

# Arrays com lista #############################################################
IFS=,
nomes=("Marcelo" "Emanuel" "Ana" "Fabiano")
echo -e "\n${nomes[*]}" # chamando todo o array como uma String ÚNICA
# echo -e "\n${nomes[@]}" # chamando todo o array como várias Strings PROTEGIAS

# Arrays com índices associativos ##############################################
declare -A dados
dados[nome]="Marcos"
dados[sobrenome]="Freitas"
dados[idade]="26"
dados[cpf]="xxx.xxx.xxx-xx"
# dados=([red]=1 [orange]=2 [green]=3) # mesmo array mas declarado com listi
# echo "${dados[red]}" # exibindo
echo -e "\n${dados[*]}\n"

# Arrays com loop ############################################################## 
carros=("Pálio" "Corsa" "Opada" "Chevette" "Mercedes" "BMW")
for item in "${carros[@]}"; do echo "$item"; done

# Arrays usando ! e # ##########################################################
echo
cores=(vermelho verde amarelo azul)
for i in "${!cores[@]}"; do echo "Vetor $i: ${cores[$i]}"; done
echo "Índices do array: ${!cores[@]}" # indices
echo "Total de itens do array: ${#cores[@]}" # total

