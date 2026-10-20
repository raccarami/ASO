

if [[ $1 =~ (^[a-z0-9._-]+@edu.gva.es$) ]]; then
	echo "Es una cuenta de profesorado."
elif [[ $1 =~ (^[a-z0-9._-]+@alu.edu.gva.es$) ]]; then
	echo "Es una cuenta de alumno."
else
	echo "No es una cuenta educativa."
fi
