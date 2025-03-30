%  general rule format, disjunction in head, conjunction in body
% h1 OR h2 <= a1 AND a2 AND NOT a3 AND NOT a4.
h1,h2 :- a1, a2, not a3, not a4.

% (1) false body
%  facts
% a1. a2.
% a3.

% truth of a3 means (not a3) is false, body is false
% no inference about head

%* 
Solving...
Answer: 1
a3 a2 a1
SATISFIABLE
 *%

%  (2) true body, no evidence that a3 or a4 are true

%  facts
a1. a2.

% we have no fact about their truth in program.
% therefore absence implies falsehood and (not a3=True), (not a4=True)

% two answer sets because of the disjunction in head

%* 
Solving...
Answer: 1
a2 a1 h1
Answer: 2
a2 a1 h2
SATISFIABLE
 *%
