# !/bin/bash
# Programa para capturar la informacion del usuario
# Autor: Erik

option=0
backupName=""

echo "Programa de Utilidades PostgresSQL"
read -p "Ingresar una opción:" option
read -p "Ingresar el nombre del archivo del backup:" backupName
echo "Opcion:$option, backupName: $backupName"
