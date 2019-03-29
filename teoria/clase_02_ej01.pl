% DataBase

observa("Maria", "Juan").
observa("Juan", "Maria").
observa("Ana", "Pedro").
observa("Juan", "Maria").

le_gusta("Maria", "Juan").
le_gusta("Mariano", "Reloj").

es_ladron("Mariano").

es_valioso("Reloj").

% Functions

es_feliz(X) :- observa(X, Y) , observa(Y, X).

esta_nervioso(X) :- le_gusta(X, Y) , observa(Y, X).

roba(X, Y) :- es_ladron(X) , le_gusta(X, Y) , es_valioso(Y).

% Testing

:- begin_tests(foo).

test(es_feliz) :- es_feliz("Juan").
test(es_feliz) :- not(es_feliz("Pedro")).
test(esta_nervioso) :- esta_nervioso("Maria").
test(esta_nervioso) :- not(esta_nervioso("Pedro")).
test(roba) :- roba("Mariano", "Reloj").
test(roba) :- not(roba("Ana", "Reloj")).

:- end_tests(foo).

% Excecution

:- run_tests, halt.
