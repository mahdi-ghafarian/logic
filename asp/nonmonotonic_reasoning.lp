% rules
q :- p.

% (1) currently truth of p is unknown
-p :- not p. % NAF for p, defaults it to -p

% (2) so after NAF, our knowledge of world is -p.
%* 
Solving...
Answer: 1
-p
SATISFIABLE
*%

% (3) nonmonotonic reasoning, what if we understand that
% p is true? does our knowledge change?

% by applying NAF to antecedent, new knowledge about the 
% facts changes the conclusion, and we should update our beliefs
% (nonmonotonic resoning)

p.

% now we should see q

%* 
Solving...
Answer: 1
p q
SATISFIABLE
 *%