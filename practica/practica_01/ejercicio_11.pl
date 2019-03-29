% DataBase

% Functions

factorial(0, 1).
factorial(N, Fact) :- N > 0, N1 is N-1 , factorial(N1, SubFact) , Fact is N * SubFact.

% Testing

:- begin_tests(testing).

test(factorial) :- factorial(5, Fact) , Fact is 120.
test(factorial) :- factorial(0, Fact) , Fact is 1.
test(factorial) :- factorial(5, Fact) , not(Fact is 1).

:- end_tests(testing).

% Excecution

:- run_tests , halt.

