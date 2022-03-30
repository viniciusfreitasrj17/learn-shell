#!/usr/bin/env bash

# arquivo original:
# myfile.c

# arquivo modificado:
# new_myfile.c

# checando diferenças
# diff myfile.c new_myfile.c

# para criar o patch de alteração,
# onde o arquivo myfile.patch é o patch de alteração. segue o comando:
# diff -u myfile.c new_myfile.c > myfile.patch

# aplicando o patch no arquivo original:
# patch < myfile.patch

# Use -b option to build a backup of the patch file:
# patch -b < myfile.patch

# If you need multiple backups of a single backup file, then use the -V option. 
# It sets the version number of each backup file. Execute the command given below:
# patch -b -V numbered < myfile.patch

# If you want to verify or observe the outcome of patching, then use -dry-run option.
# It does not make any modification to the original file:
# patch --dry-run < myfile.patch

# The -R option is used to reverse or undo a patch that has already been applied.
# patch < file.patch
# ls -l myfile.c
# patch -R < myfile.patch
# ls -l myfile.c

# Create a Patch From a Source Tree
# diff -Naur /usr/src/openvpn-2.3.2 /usr/src/openvpn-2.3.4 > openvpn.patch

# Apply Patch File to a Source Code Tree
# patch -p3 < /root/openvpn.patch