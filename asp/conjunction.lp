% Disjunction of two atoms
% a1 OR a2 => a

% Facts
2{a1;-a1;a2;-a2}.

a:-a1,a2.

% The only answer set with a is the one that contains a1 and a2
%* Solving...
Answer: 1
-a1 -a2
Answer: 2
a1 -a2
Answer: 3
a2 -a1
Answer: 4
a a2 a1
SATISFIABLE *%