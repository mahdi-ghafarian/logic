parent(ann,bob). parent(bob,carol). parent(bob,dan). 

child(X,Y) :- parent(Y,X).
