% Database

observa("maria", "omar").
observa("laura", "omar").
observa("maria", "flavio").
observa("gabriela", "flavio").
observa("maria", "carlos"). 

% Testing

:- begin_tests(ejercicio_01).

test(observa) :- observa("maria", "flavio").
test(observa) :- observa("maria", Quien).
test(observa) :- observa("maria", _).
test(observa) :- observa(Quien, "flavio").
test(observa) :- observa(Quien1, Quien2).
test(observa) :- observa(_, _).

:- end_tests(ejercicio_01).

% Excecution

:- run_tests, halt.