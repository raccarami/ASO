#!/bin/bash


if [ $# -lt 1 ]; then
 echo "Uso: limpiar_archivo.sh <parametro>"
exit
fi


if [[ ! -f $1 ]]; then
 echo "El archivo no existe."
exit
fi




