#!/usr/bin/env bash
########################################### 
# Operadores Lógicos:

# -e   -> se arquivo/pasta existe
# -d   -> se é diretório
# -f   -> se é arquivo
# -L/-h-> se é um link simbólico
# -s   -> se é maior que zero
# -O   -> se o dono do arquivo é o usuário logado atualmente

# -r   -> se usuário logado tem permissão de leitura no arquivo
# -w   -> se usuário logado tem permissão de escrita no arquivo
# -x   -> se usuário logado tem permissão de execução no arquivo

# -ot  -> se o arquivo/pasta é mais antigo
# -nt  -> se o arquivo/pasta é mais novo

# -b   -> se é um bloco especial
# -S   -> se é um socket
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
