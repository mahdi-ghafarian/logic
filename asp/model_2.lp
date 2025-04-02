
% including all atoms help in situations that all of them 
% are present in the head

% chocie for all atoms
{p;q;r}.

% Rules
p :- q,r.  % (1)
q :- p. % (2)
r :- p. % (3)

% models
%* 

Solving...
Answer: 1
p q r
Answer: 2

Answer: 3
p
Answer: 4
r
Answer: 5
p r
Answer: 6
q
Answer: 7
q r
SATISFIABLE
 *%

% Now we can find answer sets by checking
%  each model to see if every member can be derived
%  from the program: either a fact or a conclusion from 
%  the program.

%  Answer Sets

Answer: 1 % p is a fact in (2),(3)
p q r 

Answer: 2 

Answer: 6 % q is a fact in (1)
q

Answer: 4 % r is a fact in (1)
r