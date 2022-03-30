#!/usr/bin/env bash

# ^                               # -> começo de uma linha
# grep -E "^r" file.txt           # -> retorna a linha que comença com r
# sed "s/^r/gato/" file.txt

# $                               # -> começo de uma linha
# grep -E "a$" file.txt           # -> retorna a linha que termina com a

# .+                              # qualquer digito que parece uma ou mais vezes quantidade
# .*                              # qualquer digito que parece em qualquer quantidade
# .?                              # qualquer digito que parece zero ou uma quantidade
# Ex:
# sed "s/^d.*x$/gato/" file.txt   # -> pega a linha que começa com d, tem qualquer conteudo e termina com x
# grep -E "^c.?d$" file.txt       # -> pega a linha que começa co c, tem um ou zero conteudo e termina com d
# grep -E "^c.+d$" file.txt       # -> pega a linha que começa co c, tem um ou mais conteudo e termina com d

# [Aa]                            # -> lista
# [^Aa]                           # -> lista negada
# Ex:
# sed "s/^[br].*/gato/" file.txt  # -> pega as linhas que começam com b e r e que tem qualquer conteudo no meio
