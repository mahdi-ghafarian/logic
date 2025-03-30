%  negation as failure (not)

% (1) models only can include positive atoms and negative atoms.
% which are both true.

% a.
% -b.
% not c.
% :- d. % explitliy saying that d is not in the model

%* 
Solving...
Answer: 1
-b a
SATISFIABLE
 *%

% (2) rules
% b :- a. % no model, a is not in the model

%* 
Solving...
Answer: 1

SATISFIABLE
 *%

% b :- -a. % no model, -a is not in the model

%*
Solving...
Answer: 1

SATISFIABLE
 *%

b :- not a. %b is in model, because a is not known


%* 
Solving...
Answer: 1
b
SATISFIABLE
 *%







