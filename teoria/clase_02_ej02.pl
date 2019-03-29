% DataBase

hombre("Natanael").
hombre("Pablo").
hombre("Andres").

mujer("Debora").
mujer("Ester").
mujer("Priscila").

padres("Natanael", "Ester", "Debora").
padres("Natanael", "Ester", "Andres").
padres("Pablo", "Priscila", "Ester").

% Functions

hermana(X, Y) :- X \= Y, mujer(X), padres(Z, W, X), padres(Z, W, Y).

% Testing

:- begin_tests(foo).

test(hermana) :- hermana("Debora", "Andres").
test(hermana) :- not(hermana("Debora", "Ester")).
test(hermana) :- not(hermana(X, X)).

:- end_tests(foo).

% Excecution

:- run_tests, halt.
