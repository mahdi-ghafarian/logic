num(1). num(2). num(3).

% Assignment (=)
squares(XX,YY) :- XX = X*X, YY = Y*Y,
    num(X), num(Y).

#show squares/2.

%* 
Solving...
Answer: 1
squares(1,1) squares(4,1) squares(9,1) squares(1,4) squares(4,4) squares(9,4) squares(1,9) squares(4,9) squares(9,9)
SATISFIABLE
 *%