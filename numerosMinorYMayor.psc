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
	
	// Lectura e inicialización con el primer número para establecer valores base
	Escribir "Introduce numero";
	Leer num;
	numMax = num;
	numMin = num;
	cantMax = cantMax + 1;
	cantMin = cantMin + 1;
	numN = numN - 1;
	
	// Bucle para procesar los N-1 números restantes
	Mientras numN > 0
		Escribir "Introduce numero";
		Leer num;
		
		// Si el número es igual al máximo actual, incrementamos su contador
		Si num == numMax
			cantMax = cantMax + 1;
		FinSi
		
		// Si el número es igual al mínimo actual, incrementamos su contador
		Si num == numMin
			cantMin = cantMin + 1;
		FinSi
		
		// Si encontramos un nuevo máximo, lo actualizamos y reiniciamos su contador a 1
		Si num > numMax
			numMax = num;
			cantMax = 1;
		FinSi
		
		// Si encontramos un nuevo mínimo, lo actualizamos y reiniciamos su contador a 1
		Si num < numMin
			numMin = num;
			cantMin = 1;
		FinSi
		
		// Decrementamos el contador de control del bucle
		numN = numN - 1;
	FinMientras
	
	// Escribimos el resultado del cálculo
	Escribir "----------------------------------";
	Escribir " EL MÍNIMO ES ", numMin, " Y APARECE ", cantMin, " VECES.";
	Escribir " EL MÁXIMO ES ", numMax, " Y APARECE ", cantMax, " VECES.";
	Escribir "----------------------------------";
	
FinAlgoritmo
