
linea='/etc/passwd'
re1='bash$'
contador=0



while read -r linea; do

if [[ $linea =~ $re1 ]]; then
	echo $linea
	echo ""
	((contador++))
fi
done < /etc/passwd

echo""
echo "Usuarios con bash: $contador"
