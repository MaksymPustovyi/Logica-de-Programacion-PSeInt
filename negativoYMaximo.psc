Algoritmo negativoYMaximo
	Definir num1, num2, max, contador Como entero;
	Definir negativoSi Como Logico;
	
	// Presentación del ejercicio
	Escribir "Ejercicio de pagina 152";
	Escribir "#Introducción a la programación";
	Escribir "";
	Escribir "Leer 5 números enteros y decir si alguno ha sido negativo e indicar el valor máximo introducido.";
	Escribir "----------------------------------";
	
	// Inicializamos negativoSi como False
	negativoSi = Falso;
	
	// Introducimos el primer número para el análisis
	Escribir "Introduce un número: ";
	Leer num1;
	max = num1;
	Si num1 < 0
		negativoSi = Verdadero;
	FinSi
	
	// Iniciamos el bucle para leer los siguientes 4 números
	Para contador = 1 hasta 4
		Escribir "Introduce el siguiente número: ";
		Leer num2;
		
		// Buscamos el máximo comparando con el valor máximo actual
		Si num2 > max
			max = num2;
		FinSi
		
		// Comprobamos si el número introducido es negativo
		Si num2 < 0
			negativoSi = Verdadero;
		FinSi
		
		// Reinicializamos num1 para comparar con siguente numero introducido
		num1 = num2;
	FinPara
	
	// Presentamos los resultados
	Escribir "----------------------------------";
	Si negativoSi == Verdadero
		Escribir "Se han introducido números negativos: SÍ";
	SiNo
		Escribir "Se han introducido números negativos: NO";
	FinSi
	
	Escribir "El número máximo introducido es: ", max;
	Escribir "----------------------------------";
	
FinAlgoritmo