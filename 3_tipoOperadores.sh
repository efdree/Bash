# !/bin/bash
# Programa para revisar tipo de operadores
# Autor: Erik

numA=10
numB=4

echo "\nOperadores Aritmeticos"
echo "\nNumero: A= $numA y B= $numB"
echo "Sumar A + B =" $((numA + numB))
echo "Resta A - B =" $((numA - numB))
echo "Multiplicar A * B =" $((numA * numB))
echo "Dividir A / B =" $((numA / numB))
echo "Residuo A % B =" $((numA % numB))

echo -e "\nOperadores Relacionales"
echo "\nNumero: A= $numA y B= $numB"
echo "A < B = " $((numA < numB))
echo "A > B = " $((numA > numB))
echo "A <= B = " $((numA <= numB))
echo "A >= B = " $((numA >= numB))
echo "A == B = " $((numA == numB))
echo "A != B = " $((numA != numB))

echo -e "\nOperadores de Asignacion"
echo -e "\nNumerA = $numA"
echo -e "NumeroB = $numB"
echo "Sumar A += B: " $((numA += numB))
echo "Restar A -= B: " $((numA -= numB))
echo "Multiplicar A *= B: " $((numA *= numB))
echo "Dividir A /= B: " $((numA /= numB))
echo -e "Residuo A %= B: " $((numA %= numB)) "\n"
