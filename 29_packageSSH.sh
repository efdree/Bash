# !/bin/bash
# Programa para ejemplificar la transferencia de archivos por la red con el comando rsync, utilizando las opciones de empaquetamiento
# Author: Erik

echo "Transferencia de archivos con rsync"

host=""
usuario=""

read -p "Ingresar el host: " host
read -p "Ingresar el usuario: " usuario
echo "\nSe procedera a empaquetar la carpeta y transferirla"
rsync -avz $(pwd) $usuario@$host:/home/erik
