#!/bin/bash

fichero="${1:-/etc/login.defs}"

if [[ ! -f "$fichero" ]]; then
    echo "Error: el fichero $fichero no existe."
    exit 1
fi

grep -vE '^#|^$' "$fichero"

total=$(wc -l < "$fichero")
utiles=$(grep -vE '^#|^$' "$fichero" | wc -l)

echo "----"
echo "Líneas totales: $total"
echo "Líneas útiles: $utiles"
