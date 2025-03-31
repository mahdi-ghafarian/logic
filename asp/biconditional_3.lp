% another way to express a <=> b
% Prolog reasoning is limited to the rules that we provide, and does not 
% infere beyond those rules.

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



