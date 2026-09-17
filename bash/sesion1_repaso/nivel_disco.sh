resultado=$(( $1 * 100 / $2 ))


if [ $resultado -lt "70" ];
then
echo "Tu disco utiliza el $resultado % del almacenamiento, OK"

elif [ $resultado -ge "70" ] && [ $resultado -le "89" ];
then
echo "Tu disco utiliza el $resultado % del almacenamiento, AVISO" 

else
echo "Tu disco utiliza el $resultado % del almacenamiento, CRITICO"

fi

