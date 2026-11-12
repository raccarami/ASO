#!/bin/bash





fecha=$(date +%F_%H-%M)
dir="$HOME/clase/aso/ASO/ssh/3_script_copia_seguridad/backups"
dir_backup="$dir/datos_$fecha"

#                  ===================

dir_log="$dir/logs"
mkdir -p "$dir_log"
archivo_log="$dir_log/backup$fecha.log"


exec > >(tee -a "$archivo_log") 2>&1


if [ $# -lt 1 ]; then
	echo "USO: backup_scp.sh <ruta servidor>"
	exit 1
fi



ssh -o BatchMode=yes servidor true &> /dev/null


if [ $? -ne 0 ]; then
	echo "Servidor no disponible."
	exit 1
else

	mkdir -p "$dir_backup"

	scp $1 $dir_backup

	if [ $? -eq 0 ]; then
                echo "Copia realizada con éxito en: $dir_backup"
        else
                echo "Error durante la transferencia."
        fi
fi



