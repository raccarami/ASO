#Ejercicio 1. ¿Es un número de puerto?
#Escribe puerto.sh, que recibe un número de puerto como parámetro y dice si es válido.
#Si no recibe ningún parámetro, muestra un mensaje de uso y termina.
#Comprueba con una expresión regular que el parámetro solo tiene dígitos.
#Si son dígitos, comprueba que el número está entre 1 y 65535.



 re='^[0-9][0-9]*$'
if [[ $1 =~ $re && $1 -ge "1" && $1 -le "65535" ]];then
 echo "Es un puerto" 
else
 echo "No es un puerto"
fi
