# !/bin/bash
# Programa que permite manejar las utilidades de Postgres
# Author: Erik

opcion=0
fechaActual= date +%Y%m&d

instalar_postgres () {
    echo "Verificar instalacion de postgress..."
    verifyInstall= $(which psql)
    if [ $? -eq 0 ]; then
        echo "Ya esta instalado"
    else
        read -s -p "Ingresar contraseña de sudo: " password
        read -s -p "Ingresar contraseña a usar en postgres: " passwordPostgress
        echo "$password" | sudo -S apt update
        echo "$password" | sudo -S apt-get -y install postgresql-contrib
        sudo -u postgres psql -c "ALTER USER postgress WITH PASSWORD '[$passwordPostgress]': "
        echo "$password" | sudo -S systemctl enable postgresql-service
        echo "$password" | sudo -S systemctl start postgresql-service
    fi
    read -n 1 -s -r -p "Presione [ENTER] para continuar..."
}

desinstalar_postgres () {
    read -sp "\nIngresar la contraseña sudo:" password
    echo -e "\n"
    echo "$password" | sudo -S systemctl stop postgresql.service
    echo "$password" | sudo -S apt-get -y --purge remove postgresql\*
    echo "$passowrd" | sudo -S rm -r /etc/postgresql
    echo "$password" | sudo -S rm -r /etc/postgresql-common
    echo "$password" | sudo -S rm -r /var/lib/postgresql
    echo "$password" | sudo -S userdel -r postgres
    echo "$password" | sudo -S groupdel postgresql
    read -p $'\nPRESIONE [ENTER] para continuar ...'
}

sacar_respaldo () {
    echo "Listar las BDD"
    sudo -u postgres psql -c "\l"
    read -p $'\nElegir la base de datos a respaldar: ' bddBackup
    echo -e "\n"
    if [ -d "$1" ]; then
        echo "Establecer permisos al directorio"
        echo "$password" | sudo -S chmod 755 $1
        echo -e "\nRealizando Backup..."
        sudo -u postgres pg_dump -Fc $bddBackup > "$1/bddBackup$fechaActual.bak"
        echo -e "\nBackup realizado Correctamente!"
    else
        echo "El directorio $1 no existe..."
        echo -e "\n"
        read -n1 -p "Desea crear el directorio $1? (s/n)" respuestaDir
        if [ respuestaDir = "s" ]; then
            sudo mkdir $1
            echo "$password" | sudo -S chmod 755 $1
            echo -e "\nRealizando Backup..."
            sudo -u postgres pg_dump -Fc $bddBackup > "$1/bddBackup$fechaActual.bak"
            echo -e "\nBackup realizado Correctamente!"
        else
            echo -e "\nSaliendo sin realizar Backup..."
        fi
    fi
    read -n1 -s -r -p $'\nPresione [ENTER] para continuar'
}

restaurar_respaldo () {
    echo "Listar Backups"
    ls -1 $1/*.bak
    read -p "Elegir el Backup a Restaurar: " backupRestore
    read -p $'\nIngrese el nombre de la BDD destino: ' bddDestino

    #Verificar si la BDD existe!
    verifyBdd=$(sudo -u postgres psql -lqt | cut -d \| -f 1 | grep -wq $bddDestino)
    if [ $? -eq 0 ]; then
        echo "Restaurando en la BDD destino: $bddDestino"
    else
        sudo -u postgres psql -c "create database $bddDestino"
    fi
    #Verificar si el respaldo que se va restaurar existe
    if [ -f "$1/$backupRestore" ]; then
        echo "Restaurando Backup..."
        sudo -u postgres pg_restore -Fc -d $bddDestino "$1/$backupRestore"
        echo -e "\nListar la BDD"
        sudo -u postgres psql -c "\l"
    else
        echo -e "\nEl Backup $backupRestore no existe!"
    fi
    read -n1 -s -r -p $'\nPresione [ENTER] para continuar'
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
