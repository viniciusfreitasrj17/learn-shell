#!/usr/bin/env bash

# Tipos de parâmentros:

# $1    -> primeiro parâmentro
# $7    -> sétimo parâmetro
# ${21} -> vigésimo primeiro ṕarametro (parametros com duas casas decimais devem ser usados com chaves)

# $#    -> número total de parâmetros passados
# $*    -> todos os parâmetros como uma String ÚNICA
# $@    -> todos os parâmetros como várias Strings PROTEGIAS

# $$    -> número do pid do processo atual (do próprio shell)
# $!    -> número do pid do último JOB em segundo plano
# $_    -> último argumento do último comando executado
# $?    -> mostra o código de retorno do último comando executado
################################################################################

# Chamada do programa
echo "O nome do programa é \$0:     $0"

# primeiro parâmetro
echo "O primeiro \$1 parâmentro é:  $1"

# segundo parâmetro
echo "O segundo \$2 parâmentro é:   $2"

# terceiro parâmetro
echo "O terceiro \$3 parâmentro é:  $3"

# quarto parâmetro
echo "O quarto \$4 parâmentro é:    $4"

# décimo parâmetro
echo -e "O décimo \$10 parâmentro é:   ${10}\n"
################################################################################



# número total de parâmetros passados
echo "número total de parâmetros passados é:                 $#"

IFS=: # muda o caractere de espaços, por padrão é um espaço em branco
# IFS=$'\n' # pulando linha com IFS

# todos os parâmetros como uma String ÚNICA
echo "todos os parâmetros como uma String ÚNICA \$*:          $*"
# efeito: $* "a b c d e" ou "a:b:c:d:e"

# todos os parâmetros como várias Strings PROTEGIAS
echo -e "todos os parâmetros como várias Strings PROTEGIAS \$@:  $@\n"
# efeito: $@ "a" "b" "c" "d" "e"
################################################################################



# número do pid do processo atual (do próprio shell)
echo "número do pid do processo atual (do próprio shell) \$$:       $$"

# número do pid do último JOB em segundo plano
echo "número do pid do último JOB em segundo plano \$!:             $!"

# último argumento do último comando executado
echo "último argumento do último comando executado \$_:             $_"

# mostra o código de retorno do último comando executado
echo "mostra o código de retorno do último comando executado \$?:   $?"
################################################################################
