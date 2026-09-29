
clasificar_http() {


if [[ $1 -ge 200 && $1 -le 299 ]];

then

echo "Éxito"

elif [[ $1 -ge 300 && $1 -le 399 ]];

then

echo "Redirección"

elif [[ $1 -ge 400 && $1 -le 499 ]];

then

echo "Error del cliente"

elif [[ $1 -ge 500 && $1 -le 599 ]];

then

echo "Error del servidor"

else

echo "Codigo de estado desconocido."

fi


}


clasificar_http 220
clasificar_http 315
clasificar_http 456
clasificar_http 587
