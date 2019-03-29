% Database

conoce("franco", "ingles").
conoce("renzo", "ingles").
conoce("franco", "frances").
conoce("renzo", "frances").
conoce("franco", "italiano").
conoce("marco", "ingles").
conoce("omar", "ingles").
conoce("maria", "frances)". 

% Functions

habla(X, Y, Z) :- conoce(X, Y) , conoce(X, Z).

% Testing

:- begin_tests(ejercicio_02).

test(habla) :-
    findall(Persona, habla(Persona, "ingles", "frances"), Personas),
    assertion(Personas == ["franco", "renzo"]).


:- end_tests(ejercicio_02).

% Excecution

:- run_tests, halt.
