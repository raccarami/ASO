


if [ $# -eq 0 ]; then
	echo "Uso: $0 <fichero_configuración>"
	exit 1
fi

if [ ! -f "$1" ]; then
	echo "Error: El fichero '$1' no existe."
	exit 1
fi

sed -e '/^[[:space:]]*#/d' -e '/^[[:space:]]*$/d' "$1"
