# !/bin/bash
# Programa para capturar la informacion del usuario y validarla
# Autor: Erik

option=0
backupName=""
clave=""

echo "Programa de Utilidades PostgresSQL"
# Aceptar el ingreso de informacion de solo un caracter
read -n1 -p "Ingresar una opción: " option
read -n10 -p "Ingresar el nombre del archivo del backup: " backupName
echo "Opcion: $option, backupName: $backupName"
read -s -p "Clave:" clave
echo "Clave: $clave"
