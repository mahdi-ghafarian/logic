
% constraints

% generate stable models (answer sets) from
%  subset of {p(1),p(2),p(3)}
1{p(1..3)}2.

%* 
Solving...
Answer: 1
p(2)
Answer: 2
p(3)
Answer: 3
p(2) p(3)
Answer: 4
p(1)
Answer: 5
p(1) p(3)
Answer: 6
p(1) p(2)
SATISFIABLE
*%

% constraint
% remove answer sets including p(1)
% :- p(1).
%* 
Solving...
Answer: 1
p(3)
Answer: 2
p(2)
Answer: 3
p(2) p(3)
SATISFIABLE

*%

% eliminate answers that do not include p(1)
% or, show only answers that include p(1)
:- not p(1).

%* 
Solving...
Answer: 1
p(1)
Answer: 2
p(1) p(3)
Answer: 3
p(1) p(2)
SATISFIABLE
 *%

