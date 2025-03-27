% Eight queens puzzle .

{q(1..8 ,1..8)} = 8. % achieved : q /2 is a set of 8 squares on the chessboard .

:- q(R,C1) , q(R,C2) , C1 < C2 .
:- q(R1,C) , q(R2,C) , R1 < R2 .
% achieved : q /2 contains at most one square in each column
% and at most one in each row .

:- q( R1, C1) , q(R2,C2) , R1 < R2 , |R1 - R2| = |C1 - C2|.
% achieved : q /2 contains at most one square in each diagonal .