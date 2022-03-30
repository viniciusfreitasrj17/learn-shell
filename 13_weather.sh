#!/usr/bin/env bash
servidor1="wttr.in"

# Checks
if ! [[ $(type -P curl) ]]; then { echo "Comando curl não encontrado"; exit 1 ;}; fi
if ! wget -q --spider google.com; then { echo "Sem internet"; exit 1 ;}; fi

# Core
read -p "Digite o nome de sua cidade: " cidade
read -p "Digite o nome de seu Estado: " estado

if ! [[ "$cidade" ]] || ! [[ "$estado" ]]; then 
  { echo "Preencha os campos ..."; exit 1 ;}
fi

clear
if ! curl -s --fail "$servidor1/$cidade+$estado"; then 
  { echo "Erro no servidor"; exit 1;}
fi
