if [ $# -eq 0 ]; then
    echo "Uso: $0 <fichero_configuracion>"
    exit 1
fi

if [ ! -f "$1" ]; then
    echo "Error: El fichero '$1' no existe."
    exit 1
fi

cp "$1" "$1.anonimo"


sed -i 's/from [^[:space:]]*/from x.x.x.x/g' "$1.anonimo"

sleep 1

cat "$1.anonimo"

sleep 1

rm "$1.anonimo"
