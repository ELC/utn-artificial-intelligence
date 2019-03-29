% DataBase

hombre("Natanael").
hombre("Pablo").
hombre("Andres").
hombre("Ramiro").

mujer("Debora").
mujer("Ester").
mujer("Priscila").
mujer("Helena").

padres("Natanael", "Ester", "Debora").
padres("Natanael", "Ester", "Andres").
padres("Pablo", "Priscila", "Helena").
padres("Andres", "Helena", "Ramiro").

% Functions

hermana(X, Y) :- X \= Y , mujer(X), padres(Z, W, X), padres(Z, W, Y).
abuelo(X, Y) :- X \= Y , padres(X, _, W) , padres(W, _, Y).
nieto(X, Y) :- X \= Y , abuelo(Y, X).
tia(X, Y) :- X \= Y , padres(W, Z, Y) , hermana(X, W).


:- begin_tests(testing).

test(hermana) :- hermana("Debora", "Andres").
test(hermana) :- not(hermana("Debora", "Ester")).
test(hermana) :- not(hermana(X, X)).

test(abuelo) :- abuelo("Natanael", "Ramiro").
test(nieto) :- nieto("Ramiro", "Natanael").

test(tia) :- tia("Debora", "Ramiro").

:- end_tests(testing).

% Excecution

:- run_tests, halt.