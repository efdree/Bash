# !/bin/bash
# Programa para ejemplificar como se lee en un archivo
# Author: Erik

echo "Leer un archivo"
cat $1
echo "\nAlmacenar los valores en una variable"
valorCat= `cat $1`
echo "$valorCat"

#Se utiliza la variable IFS ( Interal Field Separator) para evitar que los espacios es blanco al inicio al final se recortan
echo "\nLeer archivos linea por linea utilizando while"
while IFS=read linea
do
    echo "$linea"
done < $1```
