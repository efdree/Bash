# !/bin/bash
# Programa para ejemplificar el uso de los if anidados
# Author: Erik

notaClase=0
continua=""

echo "Ejemplo setencia if else"
read -p "Indique cual es su nota (1-9): " notaClase

if (($notaClase -ge 7)); then
	echo "El alumno aprueba la materia"
	read -p "Si va acontinuar estudiando (s/n): " continua
	if ( $continua == "s"); then
		echo "Bienvenido"
	else
		echo "Gracias"
	fi
else
	echo "El alumno reprueba la materia"
fi

