% DataBase

depende("A", "C").
depende("C", "D").
depende("D", "E").
depende("E", "H").
depende("E", "I").
depende("H", "J").
depende("I", "J").
depende("B", "D").
depende("B", "F").
depende("F", "G").
depende("G", "J").

% Functions

requiere_de(X, Y) :- depende(X, Y).
requiere_de(X, Y) :- depende(Z, Y) , requiere_de(X, Z).

% Testing

:- begin_tests(testing).

test(requiere_de) :- requiere_de("A", "J").
test(requiere_de) :- not(requiere_de("J", "A")).

:- end_tests(testing).

% Excecution

:- run_tests.

:- read(X) , read(Y) ,
    (requiere_de(X, Y) -> writeln('Es dependiente'); 
                          writeln('No es dependiente')
    ) , 
    halt.

