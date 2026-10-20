#!/bin/bash

[ "$#" -ne 2 ] && echo "Uso: $0 <usuario> <shell>" && exit 1
[[ ! "$2" =~ ^/bin/(bash|sh|zsh)$ ]] && echo "Shell inválida" && exit 1
grep -q "^$1:" passwd || { echo "Usuario no existe"; exit 1; }

cp passwd passwd.bak
sed -i "s|^$1:\(.*\):.*|$1:\1:$2|" passwd
grep "^$1:" passwd
