# !/bin/bash
# Reto 4
# Author: Erik

option=0
o1="Procesos Actuales"
o2="Memoria Disponible"
o3="Espacio en Disco"
o4="Informacion de red"
o5="Variables de Entorno Configuradas"
o6="Informacion Programa"
o7="Backup Informacion"
o8="Inrgese una Opcion"

while :
do
    clear
    echo "1. " $o1
    echo "2. " $o2
    echo "3. " $o3
    echo "4. " $o4
    echo "5. " $o5
    echo "6. " $o6
    echo "7. " $o7
    echo "8. " $o8
    read -p "Ingrese una opcion [1-8]: " option
    
    case $option in
        1)
            echo $o1
            sleep 2
            ;;
        2)
            echo $o2
            sleep 2
            ;;
        3)
            echo $o3
            sleep 2
            ;;
        4)
            echo $o4
            sleep 2
            ;;
        5)
            echo $o5
            sleep 2
            ;;
        6)
            echo $o6
            sleep 2
            ;;
        7)
            echo $o7
            sleep 2
            ;;
        8)
            echo $o8
            sleep 2
            ;;
    esac
done
