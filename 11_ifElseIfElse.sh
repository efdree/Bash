# !/bin/bash
# Programa para ejemplificar el uso de la sentencia de desicion if, else
# Author: Erik

edad=0

read -p "Indique cual es su edad: " edad
if [ $edad -le 18 ]; then
	echo "La persona es adolescente"
elif [ $edad -ge 19 ] && [ $edad -le 64]; then
	echo "La persona es adulta"
else
	echo "La persona es adulto mayor"
fi

