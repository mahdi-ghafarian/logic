% person predicate is used to ground the rule
person(john).
person(mike).  
person(george).
person (alex).

healthy(john).
healthy(mike).
-healthy(george).

% for grounding to work, we need to tell ASP what is the content
% of the X, and we achieve it by introducing the person predicate
%  and using it in the rule
not_healthy(X) :-  person(X), not healthy(X).

% NAF - alex health is unknown, so he is not included in the output
#show not_healthy/1.

%* 
Solving...
Answer: 1
not_healthy(george) not_healthy(alex)
SATISFIABLE
 *%
