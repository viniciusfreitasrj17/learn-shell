#!/usr/bin/env bash

# Sintaxe FOR
for variavel in "N1" "N2" "N3" "N4" "N5" "N6"; do
  echo $variavel
done

# for number in 1 2 3 ;do echo "$number"; done
# for number in {0..9};do echo "$number"; done
# for number in {0..50..5};do echo "$number"; done
# for item in "$(cat file.txt)"; do echo "$item"; done
links="google.com facebook.com gmail.com"
for link in $links; do ping -c 2 "$link"; echo -e "\n\n\n"; done