# !/bin/bash
# Reto 3 de platzi
# Author: Erik

read -p "Ingrese un valor del (1 al 5): " valor

if (( $valor >= 1 && $valor <= 5 )); then
	if ( $valor -eq 1 ); then
		echo "Elegiste " $valor
	elif ( $valor -eq 2 ); then
		echo "Elegiste " $valor
	elif ( $valor -eq 3 ); then
		echo "Elegiste " $valor
	elif ( $valor -eq 4 ); then
		echo "Elegiste " $valor
	elif ( $valor -eq 5 ); then
		echo "Elegiste " $valor
	fi
else
	echo "numero incorrecto"
fi
