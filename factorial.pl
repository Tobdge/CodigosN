factorial_de(0, 1).

factorial_de(Numero, Factorial) :-
    Numero > 0,
    Numero1 is Numero - 1,
    factorial_de(Numero1, Factorial1),
    Factorial is Numero * Factorial1.

main :-
    write('Número: '),
    read(Numero),
    factorial_de(Numero, Factorial),
    write('Factorial: '), write(Factorial), nl.

:- initialization(main).


