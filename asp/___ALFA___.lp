% choice for all atoms, to generate all models
{p;q;r}.

% Program
p.
r :- p,q.

% Three interpretations satisfy the program
% or the program has three models

%* 
Solving...
Answer: 1
p
Answer: 2
p r
Answer: 3
p q r
SATISFIABLE
*%
