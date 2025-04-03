pay(100). pay(200). pay(400).

% count number of payments
count(N) :- N = #count{X:pay(X)}.

% sum of payments
sum(S) :- S = #sum{X:pay(X)}.

%* 
Solving...
Answer: 1
pay(100) pay(200) pay(400) count(3) sum(700)
SATISFIABLE
*%