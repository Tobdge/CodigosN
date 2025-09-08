factorial(0, 1).

factorial(N, F) :-
    N > 0,
    N1 is N - 1,
    factorial(N1, F1),
    F is N * F1.

main :-
    write('Número: '),
    read(N),
    factorial(N, F),
    write('Factorial: '), write(F), nl.

:- initialization(main).


/*
Pasos para instalar y ejecutar Prolog (SWI-Prolog) en Windows:

1. Descargar SWI-Prolog:
   - Ir a https://www.swi-prolog.org/Download.html
   - Seleccionar la versión para Windows (64-bit .exe)

2. Instalar SWI-Prolog:
   - Ejecutar el instalador descargado
   - Usar las opciones por defecto
   - Marcar la casilla "Add to PATH" para poder usar 'swipl' desde PowerShell o CMD

3. Verificar instalación:
   - Abrir PowerShell o CMD
   - Ejecutar: swipl --version
   - Debe aparecer la versión instalada de SWI-Prolog

4. Crear el archivo Prolog:
   - Crear un archivo, por ejemplo factorial.pl (EN ESTE CaSO este archivo, solo abrirlo pero anotar su ruta)
   - Escribir el código Prolog dentro de este archivo

5. Ejecutar el archivo directamente:
   - Abrir PowerShell y navegar a la carpeta donde está el archivo:
       cd C:\Users\TuUsuario\Desktop
   - Ejecutar:
       swipl factorial.pl
   - Prolog mostrará la salida y pedirá entradas si usas read/1

6. Alternativa: cargar el archivo en la consola de Prolog:
   - Ejecutar solo swipl para abrir el intérprete( o sea solo escribes swipl y ya con eso te abria el enterno y saldra algo como ?-)
   - Cargar el archivo con:
       luego esolo escribes esto una ves que ya te aparezca el "?-" escribes lo siguiente(el punto tambien se escribe acuerdate): [factorial].
   - Consultar predicados manualmente, por ejemplo:
       ?- factorial(5, F).
       F = 120.

7. Nota:
   - Al usar read/1 en Prolog, los números deben terminar con un punto:
       5.
   - Esto es obligatorio para que Prolog interprete correctamente la entrada.
*/
