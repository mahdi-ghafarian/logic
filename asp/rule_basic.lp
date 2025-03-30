% (1) add fact a to the knowledge base
% a.
% alternate form of a fact, a rule with no body
% a:-.
% alternate form of a fact, a rule with true body
a :- #true. % empty body means true body

%* 
Solving...
Answer: 1
a
SATISFIABLE
*%

%  (2) now remove the fact a from the knowledge base
%  by using a constraint
% :-a.

% we may also write the constraint like this:
#false :- a. % empty head means false head

%* 
UNSATISFIABLE
*%

% (3) note that assigning a false value to an atom does not work
% because in implication a false may imply a true or a false value
% in contrast to a true value which implies a true value

% a :- #false. % does not work



