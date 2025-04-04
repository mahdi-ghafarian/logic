% sample input
#const n = 6.
like (1,2;3,4).
dislike (2,3;1,3).

% There are n chairs around a table . Choose a chair
% for each of n guests so that guests who like each
% other sit next to each other and guests who don ’ t
% like each other sit at least one chair away .

% input : positive integer n ; set like /2 of pairs
% of guests who like each other ; set dislike /2
% of pairs of guests who dislike each other .

1 { at (1..n , C )} 1 :- C = 1..n .
% achieved : for each chair C , there is exactly one
% guest G such that at (G , C ).

C1 = C2 :- at (G , C1 ) , at (G , C2 ).
% achieved : no guest is assigned to two chairs .

adj (X , Y ) :- X =1..n , Y =1..n , |X - Y |=1.
adj (1 , n ; n ,1).
% achieved : adj (X , Y ) iff chairs X and Y are next to
% each other .

:- like ( G1 , G2 ) , at ( G1 , C1 ) , at ( G2 , C2 ) , not adj ( C1 , C2 ).
% achieved : guests who like each other sit next to
% each other .

:- dislike ( G1 , G2 ) , at ( G1 , C1 ) , at ( G2 , C2 ) , adj ( C1 , C2 ).
% achieved : guests who don ’ t like each other don ’ t
% sit next to each other .

%  start with first guest at first seat
:- not at(1,1).

#show at/2.
