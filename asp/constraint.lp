% program to demonstrate constraints
% Constraint is used to filter answer sets, only sets
% that satisfy the constraint are displayed.

% facts
{p;-p;q;-q}.

% constraint example
% p AND q (body)= F (head is false)
% NOT (p AND q) = T
% -p OR -q

% change the sign of constraint atoms to see the results
% Multiple constraints can also be present in the system.

% constraints
:-  p, q. % both p and q cannot be true at the same time (-p or -q)
% :- p.
% :- -p.
% :- p,q.
%:- -p,-q.
