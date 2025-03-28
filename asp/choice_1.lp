% choice

% since elements are connected with OR (;)
% each selection is an answer set 

%uncomment each line to learn how it works

% (1) generate all the possible subsets
% each subset is an answer set
% n=3 > number of subsets = 2^3 = 8
% {p;q;r}.

%* 
Answer: 1

Answer: 2
q
Answer: 3
r
Answer: 4
q r
Answer: 5
p
Answer: 6
p r
Answer: 7
p q
Answer: 8
p q r
SATISFIABLE *%

% (2) select all set with 2 or 3 members
% 2{p;q;r;s}3.

%* 
Answer: 1
q p
Answer: 2
r q
Answer: 3
r p
Answer: 4
r q p
Answer: 5
s p
Answer: 6
s r
Answer: 7
s r p
Answer: 8
s q
Answer: 9
s r q
Answer: 10
s q p
SATISFIABLE 
*%

% (3) create subsets with only 1 member
%  {p;q;r;s}=1.

%* 
Answer: 1
r
Answer: 2
q
Answer: 3
p
Answer: 4
s 
*%

% (4) using intervals in choice
% {p(1..3)}.

%* 
Answer: 1

Answer: 2
p(2)
Answer: 3
p(3)
Answer: 4
p(2) p(3)
Answer: 5
p(1)
Answer: 6
p(1) p(3)
Answer: 7
p(1) p(2)
Answer: 8
p(1) p(2) p(3) 
*%

