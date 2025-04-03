parent(zia,mahdi).
parent(farideh,reza).
parent(mahdi,garsha).

has_child(X) :- parent(X,_).

#show has_child/1.

%* 
Solving...
Answer: 1
has_child(zia) has_child(farideh) has_child(mahdi)
SATISFIABLE
*%
