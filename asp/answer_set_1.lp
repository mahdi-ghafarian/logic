% ANSWER SET

% answer set only include ground facts r(2) and r(3)

p(1). p(2). p(3).
q(2). q(3). q(4).
r(X) :- p(X), q(X).

%* 
Solving...
Answer: 1
q(2) q(3) q(4) p(1) p(2) p(3) r(2) r(3)
SATISFIABLE 
*%
