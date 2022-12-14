# !/bin/bash
# Programa para capturar la informacion del usuario
# Autor: Erik

option=0
backupName=""

echo "Programa de Utilidades PostgresSQL"
echo -n "Ingresar una opción:"
read option
echo -n "Ingresar el nombre del archivo del backup:"
read backupName
echo "Opcion:$option, backupName: $backupName"
