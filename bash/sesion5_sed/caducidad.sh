
if ! [[ $1 =~ ^[0-9]{1,3}$ ]]; then
	echo "Error: $1 no es un numero valido."
	exit 1
fi

cp "/home/ramrac/clase/aso/ASO/bash/sesion5_sed/lab-sed/login.defs" "./login.defs.bak" 

sed -i "s/PASS_MAX_DAYS[[:space:]]\+[0-9]+/PASS_MAX_DAYS \t$1/g" "./login.defs.bak"

echo "Generando archivo..."

sleep 1

cat ./login.defs.bak

sleep 2

rm ./login.defs.bak
