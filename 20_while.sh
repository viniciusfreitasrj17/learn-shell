#!/usr/bin/env bash
# while

number=1
while (( $number <= 5 )); do
  echo $number
  ((number++))
  # or let number++
  # or let number+=1
  # or ((number+=1))
  # or number=$(($number + 1))
  echo "Infinito"
  echo "Ajudaaa ..."
done


while :; do
  read -p "Sair do programa? [s/n]" opcao
  opcao="${opcao^^}"
  [[ "$opcao" = "S" ]] && break 
  # break     -> pausa o loop
  # continue  -> retorna para o inicio do loop
done

echo "Saindo do programa"