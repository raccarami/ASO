
sumar() {

read -p "Dime el primer numero para la suma: " num1
read -p "Dime el segundo numero para la suma: " num2

calculo=$((num1 + num2))

echo  ""
echo  'El resultado de la suma de tus numero es: '$calculo''
sleep 3
echo  ""
 read -p "Presiona Enter para continuar..."
}

restar() {

read -p "Dime el primer numero para la resta: " num1
read -p "Dime el segundo numero para la resta: " num2

calculo=$((num1 - num2))

echo  ""
echo  'El resultado de la resta de tus numero es: '$calculo''
sleep 3
echo  ""
read -p "Presiona Enter para continuar..."

}


multiplicacion() {

read -p "Dime el primer numero para la multiplicacion: " num1
read -p "Dime el segundo numero para la multiplicacion: " num2

calculo=$((num1 * num2))

echo  ""
echo  'El resultado de la multiplicacion de tus numero es: '$calculo''
sleep 3
echo  ""
read -p "Presiona Enter para continuar..."

}


division() {

read -p "Dime el primer numero para la division: " num1
read -p "Dime el segundo numero para la division: " num2

calculo=$((num1 % num2))

echo ""
echo 'El resultado de la suma de tus numero es: '$calculo''
sleep 3
echo ""
read -p "Presiona Enter para continuar..."

}


menu() {


while true; do

clear

echo "=============================="
echo "       MENÚ PRINCIPAL         "
echo "=============================="
echo "1) Sumar"
echo "2) Restar"
echo "3) Multiplicar"
echo "4) Dividir"
echo "5) Salir"
echo "=============================="

read -p "Selecciona del 1-5: " opcion

case $opcion in

  1) sumar

;;

  2) restar

;;

  3) multiplicacion

;;

  4) division

;;

  5) exit

;;

  *)
     echo ""
     echo "Opción no valida. Inténtalo de nuevo."
     echo ""
     echo "Presiona Enter para continuar..."
     ;;

esac
done

}




menu
