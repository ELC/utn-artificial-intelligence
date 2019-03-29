% DataBase

% Functions

suma(0, 0).
suma(N, Suma) :- N > 0, 
                 N1 is N-1 , 
                 suma(N1, SubSuma) , 
                 Suma is N + SubSuma.

% Testing

:- begin_tests(testing).

test(suma) :- suma(5, Suma) , Suma =:= 15.
test(suma) :- suma(0, Suma) , Suma =:= 0.
test(suma) :- suma(5, Suma) , not(Suma =:= 1).

:- end_tests(testing).

% Excecution

:- run_tests , halt.

