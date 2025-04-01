% Let's try another example on answer sets

r :- p,q.
q :- s,u.
s :- v.
p :- u.
q :- -w.

% (1) what are the facts that depend on no other facts?
% look for atoms that do not appear in the head of any rules.
% {u,v,w}

% (2) generate spaces with this set
{u;-u;v;-v;w;-w}.

% (3) run the program and see the possible answer sets
% we will have 27 possible worlds

% (4) Query: what atom are you interested in?
%  we want to know under what conditions an atom is true
% let's see which worlds include r (by constraint)
:- not r.

%* 
Solving...
Answer: 1
p u -w q r
Answer: 2
p u -v -w q r
Answer: 3
p u v s q r
Answer: 4
p u v w s q r
Answer: 5
p u v -w s q r
SATISFIABLE
 *%

% These rather simple problem is not so easy for human mind
