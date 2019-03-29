% Functions

suma(0, SumaPares, SumaImpares) :- SumaPares   is 0 , 
                                   SumaImpares is 0.

suma(N, SumaPares, SumaImpares) :- mod(N, 2) =:= 0,
                                   N1 is N - 1 ,
                                   suma(N1, SubPares, SubImpares) ,
                                   SumaPares   is SubPares + N ,
                                   SumaImpares is SubImpares.
                                  
suma(N, SumaPares, SumaImpares) :- mod(N, 2) =:= 1 ,
                                   N1 is N - 1 ,
                                   suma(N1, SubPares, SubImpares) ,
                                   SumaPares   is SubPares ,
                                   SumaImpares is SubImpares + N .

% Testing

:- begin_tests(testing).

test(suma) :- suma(5, SumaPares, SumaImpares) , 
              SumaPares =:= 6 , SumaImpares =:= 9.

test(suma) :- suma(0, SumaPares, SumaImpares) , 
              SumaPares =:= 0 , SumaImpares =:= 0.

test(suma) :- suma(5, SumaPares, SumaImpares) , 
              not(SumaPares =:= 1) , not(SumaImpares =:= 1).

:- end_tests(testing).

% Excecution

:- run_tests , halt.

