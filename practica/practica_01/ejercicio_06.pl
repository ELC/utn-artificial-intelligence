% DataBase

% musico(nombre, instrumento)

musico("Carolina", "Guitarrista").
musico("José", "Guitarrista").
musico("Miguel", "Guitarrista").
musico("Mariano", "Cantante").
musico("Silvia", "Cantante").
musico("Eduardo", "Baterista").
musico("Diego", "Baterista").
musico("Laura", "Baterista").
musico("Mauro", "Cantante").

% vive(nombre, localidad)

vive("Carolina", "Rosario").
vive("José", "Rosario").
vive("Miguel", "Funes").
vive("Mariano", "Rosario").
vive("Silvia", "Funes").
vive("Eduardo", "Roldán").
vive("Diego", "Casilda").
vive("Laura", "Rosario").
vive("Mauro", "Funes").

% Functions

banda(X) :- ( vive(Y, X) , musico(Y, "Cantante") ) ,
            ( vive(Z, X) , musico(Z, "Baterista") ) ,
            ( vive(W, X) , musico(W, "Guitarrista") ,
            ( Y \= Z , Z \= W , Y \= W )).

% Testing

:- begin_tests(testing).

test(banda) :- banda("Rosario").
test(banda) :- not(banda("Funes")).

:- end_tests(testing).

% Excecution

:- run_tests.

:- read(X) , 
    (banda(X) -> writeln('Es posible'); 
                 writeln('No es posible')
    ) , 
    halt.

