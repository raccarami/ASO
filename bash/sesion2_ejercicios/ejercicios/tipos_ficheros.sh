contar_por_extension() {
  local carpeta="$1"
  local extension="$2"

  find "$carpeta" -maxdepth 1 -type f -name "*.$extension" | wc -l
}


directorio="$HOME/prueba_bash/datos"


for ext in log txt csv; do
  total=$(contar_por_extension "$directorio" "$ext")
  echo "Archivos .$ext en $directorio: $total"
done
