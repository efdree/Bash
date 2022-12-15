# !/bin/bash
# Programa para ejemplificar el uso de arreglos
# Author: Erik

arregloNumeros=(1 2 3 4 5 6)
arreglocadenas=(Erik, Cardenas, Maria, Fernandez)
arreglosRangos=({A..Z} {10..20})

# Imprimir todos los valores
echo "Arreglo de Numeros: ${arregloNumeros[*]}"
echo "Arreglo de Cadenas: ${arregloCadenas[*]}"
echo "Arreglo de Rangos: ${arregloRangos[*]}"

# Imprimir los tamaños de los arreglos
echo "Tamaño de arreglo de Numeros: ${#arregloNumeros[*]}"
echo "Tamaño de arreglo de Cadenas: ${#arregloCadenas[*]}"
echo "Tamaño de arreglo de Rangos: ${#arregloRangos[*]}"

# Imprimir la posicion 3 del arreglo de numeros, cadenas y rangos
echo "Posicion 3 del arreglo de Numeros: ${arregloNumeros[3]}"
echo "Posicion 3 del arreglo de Cadenas: ${arregloCadenas[3]}"
echo "Posicion 3 del arreglo de Rangos: ${arregloRangos[3]}"

# Añadir y eliminar valores en un arreglo
arregloNumeros[7]=20
unset arregloNumeros[0]
echo "Arreglo de Numeros: ${arregloNumeros[*]}"
echo "Tamaño de arreglo de Numeros ${#arregloNumeros[*]}"
