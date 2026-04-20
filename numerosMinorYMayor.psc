Algoritmo numerosMinorYMayor
	Definir numN, num, numMax, numMin, cantMax, cantMin Como Entero;
	
	// Presentación del ejercicio
	Escribir "Ejercicio de pagina 152";
	Escribir "#Introducción a la programación";
	Escribir "";
	Escribir "Leer una cantidad N mayor que cero, y luego introducir N números	enteros positivos. Se pide imprimir el mayor y el menor y las veces que	aparece cada uno.";
	Escribir "----------------------------------";
	
	// Inicializamos las variables
	numN = 0;
	cantMax = 0;
	cantMin = 0;
	
	Mientras numN <= 0
		Escribir "Introduce cantidad N > 0:";
		Leer numN;
	FinMientras
	
	Escribir "Introduce numero";
	Leer num;
	numMax = num;
	numMin = num;
	cantMax = cantMax + 1;
	cantMin = cantMin + 1;
	numN = numN - 1;
	
	Mientras numN > 0
		Escribir "Introduce numero";
		Leer num;
		
		Si num == numMax
			cantMax = cantMax + 1;
		FinSi
		
		Si num == numMin
			cantMin = cantMin + 1;
		FinSi
		
		Si num > numMax
			numMax = num;
			cantMax = 1;
		FinSi
		
		Si num < numMin
			numMin = num;
			cantMin = 1;
		FinSi
		
		numN = numN - 1;
	FinMientras
	
	// Escribimos el resultado del cálculo
	Escribir "----------------------------------";
	Escribir " EL MÁXIMO ES ", numMin, " Y APARECE ", cantMin, " VECES.";
	Escribir " EL MÍNIMO ES ", numMax, " Y APARECE ", cantMax, " VECES.";
	Escribir "----------------------------------";
	
FinAlgoritmo