happy(X) :- wealthy(X), healthy(X).

wealthy(john).

% (1) since we don't know if john is healthy, 
% we can't conclude that he is happy.

%* 
Solving...
Answer: 1
wealthy(john)
SATISFIABLE
*%

% (2) No fact about health of john is equal to the following rule,
% which uses 'not', no evidence that john is unhealthy.

% not healthy(john).

%* 
Solving...
Answer: 1
wealthy(john)
SATISFIABLE
 *%

% (3) 'not' applied to the negation also have the same effect
%  no evidence that john is unhealthy (but also no evidence that
%  he is healthy).

% not -healthy(john).

%* 
Answer: 1
wealthy(john)
SATISFIABLE
*%

% (4) close world assumption, to use CWA and employ NAF, we need to
% explicitly declare the fllowing rule

healthy(john) :- not -healthy(john).

%* 
Solving...
Answer: 1
healthy(john) wealthy(john) happy(john)
SATISFIABLE
 *%

