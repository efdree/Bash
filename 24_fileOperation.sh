# !/bin/bash
# Programa para ejemplificar las operaciones de un archivo
# Author: Erik

echo "Operaciones archivo"
mkdir -m 755 backupScripts

echo "\nCopiar los scripts del directorio actual al nuevo directorio backupScripts"
cd *.* backupScripts/
ls -la backupScripts/

echo "\nMover el directorio backupScripts a otra ubicacion: $HOME"
mv backupScripts $HOME

echo "\nEliminar los archivos .txt"
rm *.txt
