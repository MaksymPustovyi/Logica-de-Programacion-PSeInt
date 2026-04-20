Algoritmo calcularDiasHorasMinutos
	Definir minutos, horas, dias, resto, tiempo Como Real;
	
	// Presentación del ejercicio
	Escribir "Ejercicio de pagina 152";
	Escribir "#Introducción a la programación";
	Escribir "";
	Escribir "Dado un tiempo en minutos, calcula los días, horas y minutos que le corresponden.";
	Escribir "----------------------------------";
	
	// Inicializamos las variables
	resto = 0;
	
	// Leemos los números de usuario
	Escribir "Introduce minutos: ";
	Leer tiempo;
	
	// Calculamos la cantidad total de días
	dias = tiempo / (24 * 60);
	// Obtenemos los minutos restantes que no llegan a formar un día completo
	resto = tiempo % (60 * 24);
	// Calculamos las horas a partir del resto anterior
	horas = resto / 60;
	// Obtenemos los minutos finales
	minutos = resto % 60;
	
	
	// Presentamos un resultado
	Escribir "----------------------------------";
	Escribir "Dias ", Trunc(dias), " | ", "Horas ", Trunc(horas), " | ", "Minutos ", minutos;
	Escribir "----------------------------------";
	
FinAlgoritmo