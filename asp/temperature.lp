%  facts
t(austin,88).
t(dallas,95).
t(houston,90).
t(san_antonio,85).

% rules
% (1) find all cities where the temperature is higher than in Austin
warm(C) :- t(C,T1), t(austin,T2), T1>T2.

#show warm/1.

%* 
Answer: 1
warm(dallas) warm(houston)
SATISFIABLE
*%

%* 
Rule (1) can be read as follows:
C is warm if
the temperature in C is T1,
the temperature in Austin is T2,
and T1 > T2.
*%