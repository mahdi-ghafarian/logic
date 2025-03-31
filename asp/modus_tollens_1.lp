% modus_tollens

% ASP only resaons by modus ponens, and modus tollens is 
% not recognized.

% we expect to see -p, but it's not included in the answer set

% rule
q :- p.

% fact
%  -q.

%* 
Solving...
Answer: 1
-q
SATISFIABLE
 *%

% we need to define -p

-p :- not p.

% now regardless of consequent -p is shown in the model.
% comment -q.

%* 
Solving...
Answer: 1
-p
SATISFIABLE
 *%




