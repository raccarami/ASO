#!/bin/bash

if [ $# -lt 1 ]; then
echo "Debes introducir un numero equivalente a un puerto."
fi


if  [[ $1 =~ ^[0-9]+$ ]] ; then
 if [[ $1 -ge "1" && $1 -le "1024" ]]; then
	echo "Es un puerto privilegiado, requiere root."
 elif [[ $1 -ge "1024" && $1 -le "65535" ]]; then
	echo "El puerto es un puerto de usuario."
 else
	echo "Error: Puerto fuera de rango."
 fi
else
echo "Error: el puerto no es un numero valido. "
fi
