#Escribe tipos_etc.sh, que recorre los ficheros de /etc y cuenta cuántos hay de cada tipo según cómo termina su nombre:
#Configuración: terminan en .conf
#Copias de seguridad: terminan en .bak o en ~
#Al final, muestra la lista de ficheros .conf y los dos totales.



re1='\.conf$'
re2='(\.bak|~)$'
conf=0
copia=0


for fichero in /etc/*; do

if [[ -f $ficher && $fichero =~ $re1 ]]; then
	echo $fichero
	conf=$((conf + 1))
elif [[ $fichero =~ $re2 ]]; then
	echo $fichero
	copias=$((copias + 1))
else
	echo""
fi
done

echo 'Configuración '$conf''
echo 'Copias de seguridad '$copias''
