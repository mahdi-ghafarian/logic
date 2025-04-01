% let's just enter porsitive atoms in our 
% program .

% See Lifschitz  https://www.cs.utexas.edu/~vl/teaching/378/sm.pdf
% Section 1 for examples about answer sets

% (1) formula
r :- p,q.

% (2) generate
{p;q}.

% (3) run
% what are the answer sets foor this formula?

%* 
Answer: 1
p q r
Answer: 2
empty
Answer: 3
q
Answer: 4
p
SATISFIABLE
*%

% So answer set {p} means p=true, everything not in a model 
% is assumed to be false. We don't need to explicitly 
% express things that are false or unknown

% answer sets = {},{p},{q},{p,q,r}

% {p,q} is not answer set because r should also be derived 
% from the formula and it would become {p,q,r}
% it's not possible to just have p and q true.


