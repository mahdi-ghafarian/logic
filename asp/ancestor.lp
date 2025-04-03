parent(mahdi,garsh).
parent(farideh,mahdi).
parent(ali,farideh).
parent(najaf,ali).

ancestor(X,Y) :- parent(X,Y).
ancestor(X,Y) :- ancestor(X,Z), ancestor(Z,Y).
