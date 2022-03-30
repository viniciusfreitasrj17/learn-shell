#!/usr/bin/env bash
# Redirecionamentos ####################################################################################################

# >              -> redireciona o stdout para um local específico, sobrescrevendo-o, ex:
# ls > saida.txt -> envia o stdout do ls para dentro do arquivo saida, sobrescrevendo-o.txt
# também serve para criar arquivos vazios, ex:
# > arquivo.txt  -> arquivo.txt está vazio
# [[ ! -e "/tmp/log.txt" ]] && > "/tmp/log.txt" # ********************************************************************** 
# 
# >>              -> redireciona o stdout para um local específico, presentando o conteudo antigo
# ls >> saida.txt -> envia o stdout do ls para dentro do arquivo saida.txt, presentando o conteudo antigo
# [[ -f "/tmp/log.txt" ]] && echo "+++" > "/tmp/log.txt" # *************************************************************
# 
# 2>              -> redireciona o stderr (saida de error) para um local específico, sobrescrevendo, ex
# ls lll 2> error.txt # ************************************************************************************************
# 
# 2>>              -> redireciona o stderr (saida de error) para um local específico, presentando o conteudo antigo, ex
# ls aaa 2>> error.txt # ***********************************************************************************************
# 
# >/dev/null       -> anula a saida do comando, mas nao o status de saida do comando, ex
# type -P vim >/dev/null # *********************************************************************************************
# ls lll >/dev/null 2>error # pegar a saida de erro e fechar a saida padrão ********************************************
# 
# 2>&1             -> direciona a saida de erro (stderr 2) para a saida padrao (stdout 1)
# 1>&2 ou >&2      -> direciona a saida padrão (stdout 1) para a saida de erro (stderr 2)
# 2>-              -> fechar a saida de erro (stderr 2)
# 1>- ou >-        -> fechar a saida padrão (stdout 1)
# ls lll >&- 2>&-   # fechando todas as saidas *************************************************************************
# 
# 
# 
# 
# 
# HERE DOCUMENT ########################################################################################################
# **********************************************************************************************************************
# cat <<FECHAMENTO
#   red
#   blue
#   yellow
#   $USER
#   \$USER
# FECHAMENTO
# 											cat <<-FECHAMENTO
# 												red
# 												blue
# 												yellow
# 												$USER
# 												\$USER
# 											FECHAMENTO
#                  -> << envia para o comando cat uma string onde o shell nao vai interpretar (exceto variaveis de 
# ambiente), o ponto de inicio e fim neste exemplo é a palavra FECHAMENTO. (o exemplo seguinte é usando com tabulação)
# 
# **********************************************************************************************************************
# cat > colors.txt <<FECHAMENTO
#   red
#   blue
#   yellow
#   $USER
#   \$USER
# FECHAMENTO
#                 -> << envia para o comando cat uma string onde o shell nao vai interpretar (exceto variaveis de 
# ambiente), o ponto de inicio e fim neste exemplo é a palavra FECHAMENTO, > está direcionado a saida para colors.txt
# 
# 
# 
# 
# 
# 
# HERE STRING ##########################################################################################################
# <<< 						-> redireciona um conteúdo para a entrada padrão (stdin) de um comando, ex:
# read nome <<<"Marcos"; echo $nome
# cut -d ":" -f 2 <<< "caca:cdscds:gdgd"
# cat <<< $HOME
# 
# USANDO <<
# sort <<< cat > lista <<EOF
# 	pera
# 	uva
# 	limao
# 	melancia
# 	manga
# 	abacaxi
# EOF
# USANDO |
# cat | sort > lista <<EOF
# 	aa
# 	gf
# 	j
# 	jg
# 	cxz
# 	fds
# EOF 
# 
# 
# 
# 
# 
# 
# 
# PIPELINE #############################################################################################################
# | 							-> pipe: pega a saida padrão (stdout 1) e lança como entrada de outro comando (stdin), ex:
# echo "red blue" | cut -d " " -f 2
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
# Process Substitution #################################################################################################
# < <(command_list) -> redireciona uma entrada para um comando, entrada como lista, ex:
# more <( ls /usr/bin ) # **********************************************************************************************
# cat < <(ls) # ********************************************************************************************************
# while read line; do ((count++)); done < <(cat file) # ****************************************************************
# while read item; do echo $item; done < <(cat <<FIM
#   a
#   b
#   c
#   d
# FIM
# )
# 
# 
# 