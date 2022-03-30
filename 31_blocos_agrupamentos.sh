#!/usr/bin/env bash

# " "     -> protege uma String, reconheçe caracteres especiais, variaveis e backslash
# $' '    -> protege uma String, reconheçe backslash
# ' '     -> protege uma String, não reconheçe nada

# ` `     -> executa comandos em uma subshell, retornando o resultado
# $()     -> executa comandos em uma subshell, retornando o resultado
# ()      -> executa comandos em uma subshell, não retorna o resultado (apenas status de saida)

# {}      -> agrupa comandos em um bloco
# ${variavel}      -> encapsular uma variavel em chaves, (sempre procure proteger a variavel) ex
# echo "${USER}-> eu"

# (())    -> executa uma operação aritmética, não retorna o resultado (apenas status de saida)
# $(())   -> executa uma operação aritmética, retorna o resultado
# $[]     -> executa uma operação aritmética, retorna o resultado     (obsoleto)

# []      -> testa expressões, retornando status de saida (podendo usar -a -o) (obsoleto, padrao POSIX)
# [[]]    -> testa expressões, retornando status de saida             (podendo usar && ||)
# 
# 
