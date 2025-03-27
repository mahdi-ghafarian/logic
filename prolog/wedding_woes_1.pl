% Initial Algorithm, not efficient

guest(gustavo).
guest(valeria).
guest(malena).
guest(esteban).
guest(jamie).

chatty(gustavo).
chatty(valeria).

likes(esteban,malena).
likes(malena,esteban).
likes(gustavo,valeria).

pairing(X,Y):-chatty(X);chatty(Y),dif(X,Y).
pairing(X,Y):-likes(X,Y),likes(Y,X),dif(X,Y).

seating(G1,G2,G3,G4,G5):-
    guest(G1),
    guest(G2),
    guest(G3),
    guest(G4),
    guest(G5),
    pairing(G1,G2),
    pairing(G2,G3),
    pairing(G3,G4),
    pairing(G4,G5),
    pairing(G5,G1),
    all_different(G1,G2,G3,G4,G5).

all_different(X1, X2, X3, X4, X5) :-
    X1 \= X2, X1 \= X3, X1 \= X4, X1 \= X5,
    X2 \= X3, X2 \= X4, X2 \= X5,
    X3 \= X4, X3 \= X5,
    X4 \= X5.

% Measure execution time using get_time/1
measure_time :-
    get_time(Start),
    findall([G1,G2,G3,G4,G5],
            seating(G1,G2,G3,G4,G5),
            Solutions
            ), 
    get_time(End),
    Time is End - Start,
    nl, write('Time: '), write(Time),nl,write(Solutions).
