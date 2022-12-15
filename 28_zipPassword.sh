# !/bin/bash
# Programa para ejemplificar el empaquetamiento con clave utilizando zip
# Author: Erik

echo "Empaquetar todos los archivos scripts de la carpeta actual con zip y asignarle una clave"
zip -e shellCourse.zip *.sh
