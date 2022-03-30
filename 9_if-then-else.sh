#!/usr/bin/env bash
# ifs são melhores para executar comando do que $(), pois rodam na mesmo processo

echo "Verificando conexão com a internet..."

# Internet
if wget -q --spider www.google.com; then
  echo "---Tem internet"
else
  echo "---Não tem internet"
fi

echo
echo
# Atravessando a rua
read -p "Está vindo carro da direita? [sim/nao] " resposta1
if [[ "$resposta1" = "sim" ]]; then
  echo "Ok, então não vamos atravessar!"; exit 1
fi

read -p "Está vindo carro da esquerda? [sim/nao] " resposta2
if [[ "$resposta2" = "sim" ]]; then
  echo "Ok, então não vamos atravessar!"; exit 1
fi

read -p "Posso atravessar? [sim/nao] " resposta3
if [[ "$resposta3" = "nao" ]]; then
  echo "Ok, então não vamos atravessar!"; exit 0
else 
  echo "Atravessando a rua..."
fi

echo "Continuei o trajeto."