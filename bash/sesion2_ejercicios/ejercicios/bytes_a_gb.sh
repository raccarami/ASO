


bytes_a_gb() {

	byte=$1
	un_gb=$((1024 * 1024 * 1024))

	calculo=$(echo "scale=2; $byte / $un_gb" | bc)
	echo "$calculo GB"
}


bytes_a_gb 10129301293101931
