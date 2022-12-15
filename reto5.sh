# !/bin/bash
# Reto 5
# Author: Erik

echo "Generando archivo..."
touch log.txt

echo "Registrando ingreso..."
user=$USER
date=$(date +%Y_%m_%d_%H:%M:$S)

echo "$user/$date" >> log.txt

sleep 1
echo "Login Registrado"
cat log.txt
