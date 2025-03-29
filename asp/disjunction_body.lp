% disjunction in body
1{a1;a2}.

% separate rules with same head
% has the same effect as disjunction in body
a :- a1.
a :- a2.

% three models and two answer sets
% {a,a1},{a,a2}

%* 
Solving...
Answer: 1
a a1
Answer: 2
a a2
Answer: 3
a a2 a1
SATISFIABLE 
*%