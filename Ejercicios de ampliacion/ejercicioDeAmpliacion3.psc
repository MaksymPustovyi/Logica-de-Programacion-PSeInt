Algoritmo ejercicioDeAmpliacion3
	Definir num, copiaNum, digitoDerecha, digitoIzquierda Como Entero;
    Definir estaOrdenado Como Logico;
	
	// Presentación del ejercicio
	Escribir "Ejercicio de pagina 160";
	Escribir "#Introducción a la programación";
	Escribir "";
	Escribir "Dado un número indicar si está ordenado. Un número está ordenado	cuando el dígito que tiene a la derecha es mayor que él.";
	Escribir "----------------------------------";
	
	// Inicialización del estado lógico (asumimos que está ordenado al principio)
	estaOrdenado = Verdadero;
	
	// Validación de entrada: el número debe tener al menos dos cifras para poder comparar
	Repetir
        Escribir "Introduce un número entero (mínimo 2 dígitos):";
        Leer num;
    Hasta Que num > 9
	
	// Creamos una copia para descomponer el número sin perder el valor original
	copiaNum = num;
	
	// Bucle de comparación: se ejecuta mientras queden parejas de dígitos y no haya desorden
	Mientras copiaNum > 9 Y estaOrdenado == Verdadero Hacer
		
		// Extraemos el dígito de la derecha (último) y el de la izquierda (penúltimo)
        digitoDerecha = copiaNum % 10;
        digitoIzquierda = Trunc(copiaNum / 10) % 10;
		
		// Verificamos la condición: la cifra izquierda debe ser estrictamente menor
        Si digitoIzquierda >= digitoDerecha Entonces
			// Si no se cumple, marcamos el número como no ordenado
            estaOrdenado = Falso;
        FinSi
        
		// Reducimos el número eliminando la última cifra para pasar a la siguiente pareja
        copiaNum = Trunc(copiaNum / 10);
    FinMientras
	
	// Presentación final de los resultados según el estado de la variable lógica
	Escribir "----------------------------------";
	Si estaOrdenado Entonces
        Escribir " [OK] EL NÚMERO ", num, " ESTÁ ORDENADO ASCENDENTEMENTE. [OK]";
    SiNo
        Escribir " [X] EL NÚMERO ", num, " NO ESTÁ ORDENADO. [X]";
    FinSi
	Escribir "----------------------------------";
	
FinAlgoritmo