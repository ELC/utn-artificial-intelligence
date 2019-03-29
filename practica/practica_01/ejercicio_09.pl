% DataBase

% hijo(hijo, padre)

hijo("Juan", "Miguel").
hijo("Jose", "Miguel").
hijo("Miguel", "Roberto").
hijo("Julio", "Roberto").
hijo("Roberto", "Carlos").

% Functions

descendiente(X, Y) :- hijo(X, Y).
descendiente(X, Y) :- hijo(Z, Y) , descendiente(X, Z).

% Testing

:- begin_tests(testing).

test(descendiente) :- descendiente("Juan", "Carlos").
test(descendiente) :- not(descendiente("Carlos", "Jose")).

:- end_tests(testing).

% Excecution

:- run_tests.

:- read(X) , read(Y) ,
    (descendiente(X, Y) -> writeln('Es descendiente'); 
                           writeln('No es descendiente')
    ) , 
    halt.

