#!/usr/bin/env bash
echo "A Linguagem do Sistema"
echo -e "$LANG\n"
echo "Diretório do Usuário Logado"
echo -e "$HOME\n"
echo "Nome do Usuário Logado"
echo -e "$USER\n"
echo "Shell usado no momento"
echo -e "$SHELL\n"

# Criar variavel somente leitura
declare -r teste="Apenas leia"
echo -e "$teste\n"
# teste=0