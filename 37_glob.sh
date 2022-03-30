#!/usr/bin/env bash

# for i in a b c d e f 1 2 3 4; do > "${i}.txt"; > "${i}.html"; > "${i}.png"; done
# rm [a-f1-4].{txt,html,png}

# *   # -> qualquer coisa, ex
# ls *.txt

# ?     # -> caracteres, ex
# ls ??.txt
# ls ?.txt

# []    # -> lista (não expanssivo), ex
# ls [1].txt

# ^   # -> negação, ex:
# ls [^a].txt

# ,   # -> E, ex: 
# ls [^a,b].txt

# -   # -> à, ex:
# ls [^a-c].txt
# ls [1-4].txt
# ls [^A-Za-z]*.txt
# ls [a-e1-3].txt
# ls [0-9][0-9].txt

# {}  # -> ou, (expanssivo) ex:
# ls ?.{txt,html,png}


# Exs:
# > 123-marcos-1.txt; > 385_xyz-2.png    # exemplo possivel
# ls [^A-Za-z]*{-,_}[^0-9]*-{1,2}.{txt,png} 2>&-