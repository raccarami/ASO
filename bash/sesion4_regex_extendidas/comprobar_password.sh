#!/bin/bash

if [ -z "$1" ]; then
    echo "Uso: $0 <contraseña>"
    exit 1
fi

pass="$1"
segura=true

if [[ "$pass" =~ .{12,} ]]; then
    echo " Tiene al menos 12 caracteres: sí"
else
    echo " Tiene al menos 12 caracteres: no"
    segura=false
fi

if [[ "$pass" =~ [0-9] ]]; then
    echo " Contiene algún dígito: sí"
else
    echo " Contiene algún dígito: no"
    segura=false
fi

if [[ "$pass" =~ [A-Z] ]]; then
    echo " Contiene alguna mayúscula: sí"
else
    echo " Contiene alguna mayúscula: no"
    segura=false
fi

if [[ "$pass" =~ [^a-zA-Z0-9] ]]; then
    echo " Contiene algún símbolo: sí"
else
    echo " Contiene algún símbolo: no"
    segura=false
fi

if grep -iq "^$pass$" /usr/share/dict/spanish 2>/dev/null; then
    echo " No es una palabra del diccionario: no"
    segura=false
else
    echo " No es una palabra del diccionario: sí"
fi

if [ "$segura" = true ]; then
    echo "La contraseña es segura"
else
    echo "La contraseña no es segura"
fi


