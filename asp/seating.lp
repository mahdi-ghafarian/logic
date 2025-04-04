% There are n chairs around a table . Choose a chair for
% each of n guests so that guests who like each other sit
% next to each other , and guests who don ’ t like each other
% sit at least one chair away .

% input : positive integer n ; set like /2 of pairs of guests
% who like each other ; set dislike /2 of pairs of
% guests who dislike each other .

#const n = 6.

like (1,2; 3,4).
dislike (2,3; 1,3).

% at (G , C ) means that guest G is assigned chair C .

{ at (G ,1.. n )} = 1 :- G = 1.. n.
% achieved : each guest is assigned a chair .

G1 = G2 :- at ( G1 , C ) , at ( G2 , C ).
% achieved : different guests are assigned different chairs .

adj (X , Y ) :- X = 1.. n , Y = 1.. n , |X - Y | = 1 .
adj (1 , n ; n ,1).
% achieved : adj (X , Y ) iff chair X is adjacent to chair Y .

:- like ( G1 , G2 ) , at ( G1 , C1 ) , at ( G2 , C2 ) , not adj ( C1 , C2 ).
% achieved : guests who like each other sit next to each
% other .

:- dislike ( G1 , G2 ) , at ( G1 , C1 ) , at ( G2 , C2 ) , adj ( C1 , C2 ).
% achieved : guests who don ’ t like each other don ’ t sit next
% to each other .

:- not at(1,1).
% achieved : guest 1 is assigned chair 1 .

%  output
#show at /2.

