% understanding answer sets by generating alternate
% worlds

% (1) create a search space for facts (not rules!)
% {p;-p;q;-q}.

% or if you are only intereste in positive facts:
% {p;q}.

% (2) Logical Formula
%  A program (collection of facts and rules) can be 
% converted to a single DNF or CNF logical formula
% for example the following program:
% a :- a1,a2.
% b :- b1,b2.
% is equivalent to:
% (~(a1 AND a2) OR a) AND (~(b1 AND b2) OR b) 
% (~a1 OR ~a2 OR a) AND (~b1 OR ~b2 OR b)

r :- p,q.

% (3) Each answer set corresponds to asseted facts
% and adds to it facts derived by rules
% for example for the above formula the only answer set
% that includes r happens when both p and q are true.
% also empty (answer 1) means facts about p or q
% are not present in the formula.

%* 
Solving...
Answer: 1

Answer: 2
-q
Answer: 3
-p
Answer: 4
-p -q
Answer: 5
q
Answer: 6
-p q
Answer: 7
p
Answer: 8
p -q
Answer: 9
p q r
SATISFIABLE
*%