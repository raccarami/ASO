


registrar() {
    local mensaje="$1"
    echo "$mensaje"
    logger -t asobackup "$mensaje"
}


directorio="${1:-/var/backups}"
copias="${2:-7}"

if [ -d $directorio ]; then
	echo "El directorio existe."
else
	echo "El directorio no existe."
	exit 1
fi

if [[ $copias =~ ^[0-9]+$ ]]; then

	if [ $copias -gt 0  ];then
		check="true"
	else
		check="false"
		exit 1
	fi
	echo "$check"
else
    echo "Error: '$copias' no es un número válido."
    exit 1
fi


fecha=$(date +%Y%m%d-%H%M%S)

tar -czf "$directorio/etc-$fecha.tar.gz" /etc > /dev/null 2>&1


numero_copias=$(ls "$directorio" | grep -E '^etc-[0-9]{8}-[0-9]{6}\.tar\.gz$' | wc -l)

if [ $numero_copias -gt 7 ]; then
	echo "Cuidado tienes $numero_copias, el recomendado son 7."
fi







