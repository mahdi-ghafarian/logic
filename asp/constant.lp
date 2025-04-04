#const a=1. #const b=1. #const c=41. #const n=10.

p(N,a*N*N+b*N+c) :- N=0..n.

%* 
Answer: 1
p(0,41) p(1,43) p(2,47) p(3,53) p(4,61) p(5,71)
p(6,83) p(7,97) p(8,113) p(9,131) p(10,151)
SATISFIABLE
*%