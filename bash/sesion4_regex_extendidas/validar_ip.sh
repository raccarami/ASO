
if [[ $1 =~ ^[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}$ ]]; then
  echo "$1 tiene un formato de IP."
 else
  echo "$1 No tiene formato de IP."
fi


#SI PONES 999.999.999.999 TE LO CUENTA COMO VALIDA LA IP.
