% DataBase

grupo("brazil", 1).
grupo("italia", 1).
grupo("jamaica", 1).
grupo("espana", 1).
grupo("argentina", 2).
grupo("nigeria", 2).
grupo("holanda", 2).
grupo("escocia", 2).

% Functions

rival(X, Y) :- grupo(X, W) , grupo(Y, W) , X \= Y.

% Testing

:- begin_tests(foo).

test(rival) :- not(rival("argentina", "brazil")).

test(rival) :-
    findall(Seleccion, rival("holanda", Seleccion), Selecciones),
    assertion(Selecciones == ["argentina", "nigeria", "escocia"]).

:- end_tests(foo).

% Excecution

:- run_tests, halt.
