% Rules
q :- p.
p :- q.
-p :- not p.
-q :- not q.

% (1) defaults to negative atoms, suitable for cause and effects
%  that are generally present

%* 
Solving...
Answer: 1
-p -q
SATISFIABLE
 *%

% (2) now when p is present.

% p.

%* Answer: 1
p q
SATISFIABLE
 *%

% (3)  when q is present.

q.

%* Answer: 1
p q
SATISFIABLE
 *%





