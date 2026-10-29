#!/bin/bash

opcion=0

while [ "$opcion" != 6 ] ;
do
	clear
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
				echo ""
		if id $nom &>/dev/null; then
		 	ps -u $nom -o pid,stat,%cpu,%mem,cmd
			        echo ""
			        read -p "Presiona ENTER para continuar..." enter
        			echo ""

		else
			echo "El usuario no existe."
			        echo ""
			        read -p "Presiona ENTER para continuar..."

		fi
	;;

	2) read -p "Dime el nombre del proceso: " nom
		echo ""
		if ps -C $nom &>/dev/null; then
		 ps -C $nom -o pid,user,%cpu,cmd
		else
			echo "No existe o no esta activo el proceso."
		fi
		echo ""
	   read -p "Presiona ENTER para continuar..."
	;;

	3) read -p "Dime el numero de procesos que quieras ver: " num
	   echo ""
		num1=$((num + 1))
		ps -eo pid,user,%cpu,comm --sort=-%cpu | head -n $num1
	   echo ""
	   read -p "Presiona ENTER para continuar..."
	;;


	4) read -p "Dime el PID del proceso: " nom

	if ps -p $nom &>/dev/null; then
		read -p "Dime la prioridad que le quieras dar: " num
	  if [ $num -lt -20 ] || [ $num -gt 19 ]; then
		echo "Error: El valor debe estar entre -20 y 19."
	  elif [ $USER != "root" ] && [ $num -lt 0 ]; then
		echo "No eres root, solo se permiten valores entre 0 y 19."
	  else
		echo ""
		renice -n $num -p $nom
		echo ""
	  fi


	else
	 echo "No existe ningun proceso con el PID $nom"
		echo ""
	fi

	 read -p "Presione ENTER para continuar..."
	;;

	5) read -p "Dime el PID del proceso: " nom

		if ps -p $nom &>/dev/null; then
		 read -p "Deseas continuar (s/n)?" resp
			 if [ $resp = "s" ] || [ $resp = "S" ]; then
			  kill -15 $nom
			  echo "Envia señal SIGTERM, esperando 3 segundos..."
			  sleep 3

			  	if ps -p $nom &>/dev/null; then
					echo "El proceso sigue activo. Forando cierre con SIGKILL."
					kill -9 $nom
			 	else
			   		echo "El proceso se ha cerrado correctamente."
			  	fi
			else
			 echo "Abortando..."
			fi
		else
			echo "El PID introducido no existe."
			echo ""
		fi
		 read -p "Presione ENTER para continuar..."

	;;

	6)
		clear
		exit
	;;
esac
done
