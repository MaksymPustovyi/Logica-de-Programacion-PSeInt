Algoritmo ejercicioDeAmpliacion2
	Definir numAnterior, numActual Como Entero;
	Definir orden Como Logico;
	Definir numOrden, numMemor Como Texto;
	
	// Presentación del ejercicio
	Escribir "Ejercicio de pagina 160";
	Escribir "#Introducción a la programación";
	Escribir "";
	Escribir "Realizar un algoritmo que lea una serie de números enteros y verifique si están ordenados ascendentemente o no, informando con un mensaje. La serie finalizará cuando se introduzca un cero";
	Escribir "----------------------------------";
	
	// Inicialización del estado lógico (asumimos que está ordenado al principio)
	orden = Verdadero;
	
	// Validación de la primera entrada: debe ser distinto de cero para empezar
	Repetir
		Escribir "Dame un número entero para empezar:";
		Leer numActual;
	Hasta Que numActual <> 0
	
	// Guardamos el primer número como referencia
	numAnterior = numActual;
	// Iniciamos el historial de la serie
	numOrden = ConvertirATexto(numActual);
	
	// Repetimos para cada dígito
	Repetir
		Escribir "Dame el siguiente número entero (0 para terminar):";
		Leer numActual;
		
		// Solo procesamos si el número no es el activador de salida (0)
		Si numActual <> 0
			
			// Verificación lógica de orden ascendente
			Si numActual < numAnterior
				// Si el actual es menor, rompemos el orden ascendente
				orden = Falso;
				numMemor = " > " + ConvertirATexto(numActual) + " [ERROR]";
			SiNo
				// Si el orden es correcto, añadimos el símbolo de menor que
				numMemor = " < " + ConvertirATexto(numActual);
			FinSi
			
			// Actualizamos el número anterior para la siguiente comparación
			numAnterior = numActual;
			
			// Concatenamos el nuevo movimiento al historial de la serie
			numOrden = numOrden + numMemor;
			
		FinSi
	Hasta Que numActual = 0
	
	// Presentación final de los resultados
	Escribir "----------------------------------";
	Escribir " SERIE PROCESADA: ", numOrden;
	Si orden = Verdadero Entonces
        Escribir " [OK] RESULTADO: LA SERIE ESTÁ ORDENADA ASCENDENTEMENTE. [OK]";
    SiNo
        Escribir " [X] RESULTADO: LA SERIE NO ESTÁ ORDENADA [X]";
    FinSi
	Escribir "----------------------------------";
	
FinAlgoritmo