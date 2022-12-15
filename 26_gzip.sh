# !/bin/bash
# Programa para ejemplificar el empaquetamiento conel comando tar y gzip
# Author: Erik

echo "Empaquetar todos los archivos scripts de la carpeta actual"
tar -cvf shellCourse.tar *.sh

# Cuando se empaqueta con gzip el empaquetamiento anterior se elimina
gzip shellCourse.tar

echo "Empaquetar un solo archivo con un ratio 9"
gzip -9 9_options.sh
