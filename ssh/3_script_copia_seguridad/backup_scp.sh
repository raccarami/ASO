#!/bin/bash


if [ $# -lt 1 ]; then
	echo "USO: backup_scp.sh <scp ...>"
	exit 1
fi



ssh -o BatchMode=yes servidor true &> /dev/null


if [ $? -ne 0 ]; then
	echo "Servidor no disponible."
	exit 1
fi



