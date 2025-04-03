% Prime numbers from 1 to n
#const n=100.

% input: positive integers n, k.

composite(N) :- N=1..n, I=2..N-1, N\I=0.
% achieved: composite(N) iff N is a composite number
% from {1,...,n}.

prime(N) :- N=2..n, not composite(N).
% achieved: prime(N) iff N is a prime number
% from {1,...,n}.

#show prime/1.