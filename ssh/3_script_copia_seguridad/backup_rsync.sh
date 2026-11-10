#!/bin/bash

BACKUP_ROOT="$HOME/backups"
LOG_FILE="$BACKUP_ROOT/backup.log"
DEST_DIR="$BACKUP_ROOT/espejo"

mostrar_uso() {
    echo "Uso: $0 alias_servidor:ruta_remota"
    exit 1
}

[ -z "$1" ] && mostrar_uso
REMOTE_TARGET="$1"

mkdir -p "$DEST_DIR"

SERVIDOR="${REMOTE_TARGET%%:*}"
RUTA_REMOTA="${REMOTE_TARGET#*:}"

[ "$SERVIDOR" = "$REMOTE_TARGET" ] || [ -z "$SERVIDOR" ] || [ -z "$RUTA_REMOTA" ] && mostrar_uso

# Comprobar la conexión con el servidor usando el alias configurado (sin pedir contraseña)
if ! ssh -o BatchMode=yes -o ConnectTimeout=5 "$SERVIDOR" true &>/dev/null; then
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $REMOTE_TARGET - mal" >> "$LOG_FILE"
    exit 1
fi

if rsync -av "${REMOTE_TARGET}/" "$DEST_DIR/" &>/dev/null; then
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $REMOTE_TARGET - bien" >> "$LOG_FILE"
else
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $REMOTE_TARGET - mal" >> "$LOG_FILE"
    exit 1
fi