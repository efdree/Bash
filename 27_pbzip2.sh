# !/bin/bash
# Programa para ejemplificar el empaquetamiento conel comando pbzip
# Author: Erik

echo "Empaquetar todos los archivos scripts de la carpeta actual"
tar -cvf shellCourse.tar *.sh
pbzip2 -f shellCourse.tar

echo "Empaquetar un directorio con tar y pbzip2"
tar -cf *.sh -c > shellCourse.tar.bz2
