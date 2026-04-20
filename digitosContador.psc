Algoritmo digitosContador
	Definir num, numeroOriginal, digitos Como Entero;
	
	// Presentación del ejercicio
	Escribir "Ejercicio de pagina 152";
	Escribir "#Introducción a la programación";
	Escribir "";
	Escribir "Dado un número, determinar cuántos dígitos tiene.";
	Escribir "----------------------------------";
	
	// Inicializamos las variables
	digitos = 0;
	
	Escribir "Introduce número:";
	Leer num;
	numeroOriginal = num;
	
	// Caso especial para el cero
	Si num = 0 Entonces
        digitos = 1;
    SiNo
	// Contamos dígitos
		Mientras num <> 0
			digitos = digitos + 1;
			num = Trunc(num / 10);
			Escribir num;
		FinMientras
	FinSi
	
	// Escribimos el resultado del cálculo
	Escribir "----------------------------------";
	Escribir " EL NUMERO " numeroOriginal " TIENE " digitos " DIGITOS";
	Escribir "----------------------------------";
	
FinAlgoritmo