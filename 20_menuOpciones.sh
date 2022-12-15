# !/bin/bash
# Programa que permite manejar las utilidades de Postgres
# Author: Erik

opcion=0

while :
do
    # Limpiar la pantalla
    clear
    # Desplegar el menu de opciones
    echo "___________________________________________"
    echo "PGUTIL - PRograma de Utilidades de Postgres"
    echo "___________________________________________"
    echo "            MENU PRINCIPAL                 "
    echo "1. Instalar Postgres"
    echo "2. Desinstalar Postgres"
    echo "3. Sacar un respaldo"
    echo "4. Restar respaldo"
    echo "5. Salir"

    # Leer los datos del usuario - capturar informacion
    read -p "Ingrese una opcion [1-5]: " opcion

    # validar la opcion ingresada
    case $opcion in
        1)
            echo "Instalar postgres....."
            sleep 3
            ;;
        2)
            echo "Desinstalar postgres....."
            sleep 3
            ;;
        3)
            echo "Sacar respaldo....."
            sleep 3
            ;;
        4)
            echo "Restaurar respaldo....."
            sleep 3
            ;;
        5)
            echo "Salir del Programa"
            exit 0
            ;;
    esac
done
