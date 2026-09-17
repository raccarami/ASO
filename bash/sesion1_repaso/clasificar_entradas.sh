for entrada in ./*; 
do

nombre=$(basename "$entrada")

if [ -f $entrada ];
	then
echo "$nombre : fichero"

elif [ -d $entrada ];
	then
echo "$nombre : directorio"

else
echo "$nombre : Otro tipo de archivo"

fi
done
