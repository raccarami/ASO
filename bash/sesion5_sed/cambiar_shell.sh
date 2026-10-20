#!/bin/bash

if [ "$#" -ne 2 ]: then
 echo "Uso: $0 <usuario> <shell>"
 exit 1
fi

if [[ ! "$2" =~ ^/bin/(bash|sh|zsh)$ ]]: then
 echo "Shell inválida"
 exit 1
fi


if [grep -q "^$1:" passwd]: then
 echo "Usuario no existe"
 exit 1
fi



cp passwd passwd.bak

sed -i "s|^$1:\(.*\):.*|$1:\1:$2|" passwd

grep "^$1:" passwd
