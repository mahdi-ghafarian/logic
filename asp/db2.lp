
% biconditional
% a <=> a1 and a2

3{a;-a;a1;-a1;a2;-a2}.

% Rules

% a1 AND a2 => a
a :- a1,a2.

% a => a1 AND a2 
a1:-a.
a2:-a.

