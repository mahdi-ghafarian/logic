% another way to express a <=> b

% a => b
b :- a.
-a :- -b.

% b => a
a :- b.
-b :- -a.

% (1) default answer: empty set

% (2) adding facts
% .a. %  {a,b}
% -b. % {-b,-a}
% b. % {a,b}
% -a. {-a,-b}.

% adding inconsistent facts, UNSATISFIABLE
% a.-b.
% -a.b.

b.



