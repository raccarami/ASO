

if [[ $1 =~ (^.+@edu.gva.es$) ]]; then
	echo "Es una cuenta de profesorado."
elif [[ $1 =~ (^.+@alu.edu.gva.es$) ]]; then
	echo "Es una cuenta de alumno."
else
	echo "No es una cuenta educativa."
fi
