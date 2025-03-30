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

Models       : 0
 *%


