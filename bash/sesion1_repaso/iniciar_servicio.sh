
if [ -z $1 ]
	then
		echo "Debes indicar el nombre del servicio"
	else
		echo "Comprobando servicio..."
	sleep 3

	if
		systemctl list-unit-files "$1.service" &>/dev/null;
	then
			echo ""
		systemctl status $1
			echo ""
	sleep 3
		echo "iniciando servicio..."
		systemctl start $1
			echo""
	sleep 3
		systemctl status $1
	else
		echo "$1 no es un servicio"
fi
fi

