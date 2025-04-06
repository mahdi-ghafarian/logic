parent(mahdi,garsh).
parent(farideh,mahdi).
parent(ali,farideh).
parent(najaf,ali).

% Recursion
ancestor(X,Y) :- parent(X,Y).
ancestor(X,Y) :- ancestor(X,Z), ancestor(Z,Y).
