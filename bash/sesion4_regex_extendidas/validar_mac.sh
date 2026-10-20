if [[ $1 =~ ^[0-9a-fA-F]{1,2}([:-][0-9a-fA-F]{1,2}){5}$ ]]; then
  echo "$1 Tiene formato MAC."
else
  echo "$1 no tieen formato MAC."
fi

