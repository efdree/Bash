# !/bin/bash
# Programa para ejemplificar expresiones condicionales
# Author: Erik
edad=0
pais=""
pathArchivo=""

read -p "Ingrese edad: " edad
read -p "ingrese pais: " pais
read -p "Ingrese ruta archivo: " pathArchivo

echo "\nExpresiones Condicionales con numeros"
if ( $edad -lt 10 ); then
	echo "La persona es niño o niña"
elif ( $edad -ge 10 ) && ( $edad -le 17 ); then
	echo "La persona es adolescente"
else
	echo "La persona es mayor de edad"
fi

echo "\nExpresiones condicionales con cadena"
if ( $pais = "EEUU" ); then
	echo "Americana"
elif ( $pais = "Peru" ) || ($pais = "Colombia" ); then
	echo "Sur America"
else
	echo "desconocido"
fi

echo "\nExpresiones condicionales con archivos"
if ( -d $pathArchivo ); then
       echo "Archivo Existe"
else
	echo "Archivo no existe"
fi	

