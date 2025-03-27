% Disjunction of two atoms
% a1 OR a2 => a

% Facts
3{a;-a;a1;-a1;a2;-a2}.

%can be written in two ways:
% (1)
% a :- a1; a2.

% (2)
a:-a1.
a:-a2.
