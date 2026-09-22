sumar() {

read -p "Dime el primero numero: " num1
read -p "Dime el segundo numero: " num2

resultado=$((num1+num2))

echo ""
echo 'El resultado de la suma es: '$resultado''
echo ""
sleep 1
read -p "Presiona Enter para continuar...."

}

restar() {


read -p "Dime el primero numero: " num1
read -p "Dime el segundo numero: " num2

resultado=$((num1-num2))

echo ""
echo 'El resultado de la resta es: '$resultado''
echo ""
sleep 1
read -p "Presiona Enter para continuar...."

}

mulitplicar() {

read -p "Dime el primero numero: " num1
read -p "Dime el segundo numero: " num2

resultado=$((num1*num2))

echo ""
echo 'El resultado de la multiplicación es: '$resultado''
echo ""
sleep 1
read -p "Presiona Enter para continuar...."
}


dividir() {

read -p "Dime el primero numero: " num1
read -p "Dime el segundo numero: " num2

resultado=$((num1%num2))

echo ""
echo 'El resultado de la suma es: '$resultado''
echo ""
sleep 1
read -p "Presiona Enter para continuar...."

}






menu1() {


while true; do

clear
sleep 1

echo ==================================================
echo			"CALCULDORA"
echo =================================================
echo ""
echo "1) Sumar"
echo ""
echo "2) Restar"
echo ""
echo "3) Multiplicar"
echo ""
echo "4) Dividir"
echo ""
echo "5) Salir"
echo ""

sleep 1
echo ""
read -p "Elije una opcion: " respuesta
echo ""

case $respuesta in

1)

sumar

;;

2)

restar

;;

3)

multiplicar

;;

4)

dividir

;;

5)


exit

;;

*)
echo ""
read -p "Opción No valida, porfavor vuelve a intentarlo....[Presiona ENTER]"
echo ""


;;




esac



done






}


menu1


























}
