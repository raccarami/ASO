
if [ $# -eq 0 ]; then
    echo "Uso: $0 <fichero_configuracion>"
    exit 1
fi

if [ ! -f "$1" ]; then
    echo "Error: El fichero '$1' no existe."
    exit 1
fi

sed 's/@[^[:space:]]*/alu.edu.gva.es/g' $1
