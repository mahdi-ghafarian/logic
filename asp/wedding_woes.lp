
% guests
guest(gustavo).
guest(valeria).
guest(malena).
guest(esteban).
guest(jamie).

chatty(gustavo).
chatty(valeria).

likes(esteban,malena).
likes(malena,esteban).
likes(gustavo,valeria).

pairing(X,Y):-likes(X,Y),likes(Y,X).
pairing(X,Y):-chatty(X);chatty(Y).

1 { seat(X, G) : guest(G) } 1 :- X = 1..5.

seat(X, G) :- pairing(G, _), X = 1..5.


% Constraint: Each guest can only occupy one seat
:- seat(X1, G), seat(X2, G), X1 != X2.



% #show guest/1.
% #show pairing/2.
#show seat/2.
