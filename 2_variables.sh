# !/bin/bash
# Programa para revisar la declaracion de variables

opcion=0
nombre=Erik

echo "Opcion: $opcion y Nombre: $nombre"

# Expotar la variable nombre para que este disponible a lo demas procesos

export nombre

# Llamar al siguiente script para recuperar la variable

./2_variables_2.sh
