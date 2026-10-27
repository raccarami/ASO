
opcion=0

while [ "$opcion" != 6 ] ;
do
	echo "==================="
	echo "Gestión de procesos"
	echo "==================="
	echo "1) Listar los procesos de un usuario"
	echo "2) Buscar un proceso por nombre"
	echo "3) Mostrar los N procesos que más CPU consumen"
	echo "4) Cambiar la prioridad de un proceso"
	echo "5) Finalizar un proceso"
	echo "6) Salir"

read -p "Elije una opción: " opcion

case $opcion in

	1) read -p "Dime el nombre de usuario: " nom

		if grep -q id "^.+($nom).+$"; then
		 	ps -u $nom -o pid,stat,%cpu,%mem,cmd
			sleep 3
		else
			echo "El usuario no existe."
			sleep 0.5
			clear
			sleep 0.5
		fi
	;;

	2)

	;;

	3)

	;;

esac

done
