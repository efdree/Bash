# !/bin/bash
# Programa para ejemplificar el uso de la sentencia case
# Author: Erik

opcion=""

echo "Ejemplo setencia Case"
read -p "Indique una opcion de la A - Z: " opcion

case $opcion in
	"A") echo "\nOperacion guardar archivo";;
	"B") echo "\nOpcion eliminar archivo";;
	[C-E]) echo "\nNo es implementada la opcion";;
	"*") echo "Opcion incorrecta"
esac
