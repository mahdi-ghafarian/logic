% how can we generate the four natural reasoning rules
% modus ponens, modus tollens, inversion, and abduction

% Rules
% (1) valid logical rules for p => q
q :- p. % for p => q (m.p.)
-p :- not p. % for -q => -p (m.t.) (NAF for antecedent, p)

% (2) valid logical rules for q => p (m.p.)
p :- q. % for q => p, abduction
-q :- not q. % for -p => -q (m.t.) (NAF for antecedent, q), inversion


% (3) This program defaults to negation because of using NAFs

%* 
Answer: 1
-q -p
SATISFIABLE
*%

% (4) test individually
%  p. {p,q}
%  q. {p,q}
% -p. {-p,-q}
% -q. {-p,-q}


