Algoritmo intercambio
	Definir a, b, c Como Entero;
	
	// Presentación del ejercicio
	Escribir "Ejercicio de pagina 152";
	Escribir "#Introducción a la programación";
	Escribir "";
	Escribir "Leer dos números A y B e intercambiar el valor de sus variables.";
	Escribir "----------------------------------";
	
	// Leemos los números de usuario
	Escribir "Introduce un número A: ";
	Leer a;
	Escribir "Introduce un número B: ";
	Leer b;
	
	// Cambiamos
	c=b;
	b=a;
	a=c;
	
	// Presentamos un resultado
	Escribir "----------------------------------";
	Escribir "Ya A = ", a, " y B = ",  b;
	Escribir "----------------------------------";
	
FinAlgoritmo