% Condition

% facts
p(a). p(b). p(c).

% we can either write:
% {q(a), q(b), q(c)}2.

% or use the (:) which menas select X for q
% from the p arguments
2{q(X):p(X)}2.

%* 
Answer: 1
p(a) p(b) p(c) q(b) q(c)
Answer: 2
p(a) p(b) p(c) q(a) q(b)
Answer: 3
p(a) p(b) p(c) q(a) q(c)
*%

