#!/usr/bin/env bash

servidor1="v4.ifconfig.co"
servidor2="icanhazip.com"

echo "Verificando se há conexão com a internet..."
if ! wget -q --spider www.google.com; then
  { echo "Não há conexão"; exit 1 ;}
fi

ip=$(if ! curl -s --fail "$servidor1"; then curl -s --fail "$servidor2"; fi)

echo "O seu IP externo é: $ip"