Algoritmo ejercicioDeAmpliacion1
	Definir num, numOriginal, resultado Como Entero;
	
	// Presentación del ejercicio
	Escribir "Ejercicio de pagina 160";
	Escribir "#Introducción a la programación";
	Escribir "";
	Escribir "Dado un número calcular el producto de los dígitos distintos de cero.";
	Escribir "----------------------------------";
	
	// Inicializamos las variables
	num = 0;
	resultado = 1;
	
	// Esperamos hasta que el numero introducido <> 0
	Mientras num <= 0
		Escribir "Introduce un número entero positivo: ";
		Leer num;
	FinMientras
	
	// Guardamos numero original para escribir el resultado
	numOriginal = num;
	
	// Repetimos para cada dígito
	Repetir
		// Si digit <> 0 calculamos el producto
		Si num % 10 <> 0
			resultado = resultado * (num % 10);
		FinSi
		// Eliminamos el último dígito
		num = Trunc(num / 10);
	Hasta Que num = 0
	
	// Escribimos el resultado del cálculo
	Escribir "----------------------------------";
	Escribir " EL PRODUCTO DE LOS DIGITOS DISTINTOS DE CERO DE UN NUMERO ", numOriginal, " ES " resultado;
	Escribir "----------------------------------";
	
FinAlgoritmo
