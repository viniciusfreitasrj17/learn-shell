#!/usr/bin/env bash

# eval    -> transforma variaveis em comandos, ex:
# run="firefox"
# run="> file.txt" # substitui o  run=$(> file.txt)
# eval "$run"

# pipe="|"
# eval cat file.txt $pipe head -n 1





# cut, tr, sort, wc, head, diff, grep são mais leves que o sed e awk






# find                                      # busca avançada
# find . -name file3                        # nome exato do arquivo
# find . -iname file3                       # ignora uppercase e lowercase
# find . -name "*.txt"                      # com globs
# find . -perm \700                         # busca pela permissão 700
# find . -maxdepth 1                        # na pasta atual
# find . -type f                            # por f file, d directory, l link
# find . -size +3k                          # por tamanho

# find . -iname file3 -exec cp {} . \;      # executar um comando a partir da 
                                            # saido do find (como o xargs), 
                                            # neste caso o {} é a saida do find, 
                                            # \; é obrigatorio para o -exec







# xargs                               -> pega a saida de um comando e joga para parâmentros para outro comendo, ex:
# find . -iname "*.mp3" | xargs rm -f # neste caso ele pega a stdout do find e joga como parametro para o rm
# xargs rm -f < <(find . -iname "*.mp3") # mesmo comendo sem usar o pipe |
# find . -iname "*.mp3" -print0 | xargs -0 rm -f # remover também os arquivos que tem espaços no nome

