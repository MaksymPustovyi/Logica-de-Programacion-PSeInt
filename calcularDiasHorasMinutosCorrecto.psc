Algoritmo calcularDiasHorasMinutosCorrecto
	Definir minutos, horas, dias, resto, tiempo Como ENTERO;
	
	// Presentación del ejercicio
	Escribir "Ejercicio de pagina 152";
	Escribir "#Introducción a la programación";
	Escribir "";
	Escribir "Dado un tiempo en minutos, calcula los días, horas y minutos que le corresponden.";
	Escribir "----------------------------------";
	
	// Leemos los números de usuario
	Escribir "Introduce minutos: ";									// ejemplo 1			ejemplo 2
	Leer tiempo; 														// tiempo=1501			tiempo=5000
	
	minutos = tiempo % 60; 												//minutos=1				minutos=20
	resto = tiempo - minutos; 											//resto=1500			resto=4980
	
	horas = (resto / 60) % 24; 											//horas=1				horas=11
	resto = tiempo - (horas*60) - minutos; 								//resto=1440			resto=4320
	
	dias = resto / (60*24); 											//dias=1				dias=3
	resto = tiempo - (dias*24*60) - (horas*60) - minutos; 				//resto=0				resto=0
	
	// Presentamos un resultado
	Escribir "----------------------------------";
	Escribir "Dias ", dias, " | ", "Horas ", horas, " | ", "Minutos ", minutos;
	Escribir "----------------------------------";
	
FinAlgoritmo