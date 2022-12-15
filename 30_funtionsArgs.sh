# !/bin/bash
# Programa que permite manejar las utilidades de Postgres
# Author: Erik

opcion=0

instalar_postgres () {
    echo "Instalar Progress..."
}

desinstalar_postgres () {
    echo "Desinstalar protgress..."
}

sacar_respaldo () {
    echo "Sacando respaldo..."
    echo "Directorio backup: $1"
}

restaurar_respaldo () {
    echo "Restaurar respaldo..."
    echo "Directorio respaldo: $1"
}
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
            instalar_postgres
            sleep 3
            ;;
        2)
            desinstalar_postgres
            sleep 3
            ;;
        3)
            read -p "Directorio Backup: " directorioBackup
            sacar_respaldo $directorioBackup
            sleep 3
            ;;
        4)
            read -p "Directorio de respaldo: " directorioRespaldos
            restaurar_respaldo $directorioRespaldos
            sleep 3
            ;;
        5)
            echo "Salir del Programa"
            exit 0
            ;;
    esac
done
