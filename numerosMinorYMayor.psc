Algoritmo numerosMinorYMayor
	Definir numN, num, numMax, numMin, cantMax, cantMin, i Como Entero;
	Definir esNumero Como Logico;
	Definir entrada Como Caracter;
	
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
	
	// Bucle para validar que la cantidad N sea un número entero positivo
	Mientras numN <= 0 Hacer
		Escribir "Introduce la cantidad total de números (N > 0):";
		Leer entrada; // Leemos la entrada como cadena para evitar errores de tipo
		
		esNumero = Verdadero; // Asumimos que la entrada es válida inicialmente
		
		// Verificamos si la entrada está vacía
		Si Longitud(entrada) == 0 Entonces
			esNumero = Falso;
		FinSi
		
		// Comprobamos cada carácter para asegurar que sea un dígito
		Para i = 0 Hasta Longitud(entrada) - 1 Hacer
			Si Subcadena(entrada, i, i) < "0" o Subcadena(entrada, i, i) > "9" Entonces
				esNumero = Falso; // Si no es un dígito, la entrada no es válida
			FinSi
		FinPara
		
		// Si la validación es correcta, convertimos el texto a número entero
		Si esNumero Entonces
			numN = ConvertirANumero(entrada);
			
			// Validamos que el número sea estrictamente mayor que cero
			Si numN <= 0 Entonces
				Escribir "Error: La cantidad debe ser mayor que cero.";
				Escribir "----------------------------------";
			FinSi
		// Si la entrada contiene caracteres no numéricos
		SiNo
			Escribir "Error: Entrada no válida. Introduce un número entero positivo.";
			Escribir "----------------------------------";
		FinSi
	FinMientras
	
	// Bucle principal para procesar los N números solicitados
	Mientras numN > 0
		
		Escribir "Faltan ", numN, " números por introducir:";
		Leer entrada; //Esperamos entrada de numero entero, pero leemos como texto
		
		esNumero = Verdadero; // Reiniciamos el estado de validación
		
		// Iniciamos el análisis de la cadena introducida
		Para i = 0 Hasta Longitud(entrada) - 1 Hacer
			// Verificamos si el carácter es numérico
			Si Subcadena(entrada, i, i) < "0" o Subcadena(entrada, i, i) > "9" Entonces
				// Permitimos el signo negativo solo si es el primer carácter
				Si no (i == 0 y Subcadena(entrada, i, i) == "-") Entonces
					esNumero = Falso; // Marcamos como inválido si hay letras o símbolos extraños
				FinSi
			FinSi
		FinPara
		
		// Si el formato es numérico, procesamos el valor
		Si esNumero Entonces
			num = ConvertirANumero(entrada); // Conversión final de tipo cadena a tipo entero
			
			// Inicialización de valores máximos y mínimos con el primer número válido
			Si cantMax == 0 Entonces
                numMax = num; // El primer número se define como el máximo actual
                numMin = num; // El primer número se define como el mínimo actual
                cantMax = cantMax + 1; // Iniciamos el contador de máximos
                cantMin = cantMin + 1; // Iniciamos el contador de mínimos
                numN = numN - 1; // Reducimos la cantidad de números pendientes
				
			Sino
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
			FinSi
		// Bloque de manejo de errores en caso de entrada no numérica
		SiNo
			Escribir "Permitido solo numeros Enteros";
			Escribir "----------------------------------";
		FinSi
	FinMientras
	
	// Escribimos el resultado del cálculo
	Escribir "----------------------------------";
	Escribir " EL MÍNIMO ES ", numMin, " Y APARECE ", cantMin, " VECES.";
	Escribir " EL MÁXIMO ES ", numMax, " Y APARECE ", cantMax, " VECES.";
	Escribir "----------------------------------";
	
FinAlgoritmo
