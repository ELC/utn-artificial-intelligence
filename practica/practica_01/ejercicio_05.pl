% DataBase

% auto(patente,propietario)
auto("hti687", "Pedro").
auto("jug144", "Juan").
auto("gqm758", "Pedro").
auto("lod445", "Carlos").
auto("lfz569", "Miguel").
auto("axk798", "Maria").

% deuda(patente, monto adeudado)
deuda("lfz569", 2000).
deuda("gqm758", 15000).
deuda("axk798", 1000).

% Functions

deudor(X) :- auto(Z, X) , deuda(Z, _).

% Testing

:- begin_tests(testing).

test(deudor) :- deudor("Miguel").
test(deudor) :- not(deudor("Carlos")).

:- end_tests(testing).

% Excecution

:- run_tests.

:- read(X) , 
    (deudor(X) -> writeln('Tiene deudas'); 
                  writeln('No tiene deudas')
    ) , 
    halt.
