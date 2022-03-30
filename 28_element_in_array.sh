#!/usr/bin/env bash
# nao funciona em um array associativo
# arr=([red]="maça" [yellow]="banana" [laranja]="laranja" [roxo]="uva")
# element="uva"

arr=("apple" "banana" "mango" "cherry" "mango" "grape")
element="$1"
index=-1
 
for i in "${!arr[@]}"; do 
  if [[ "${arr[$i]}" = "${element}" ]]; then index=$i; break; fi
done

echo $index