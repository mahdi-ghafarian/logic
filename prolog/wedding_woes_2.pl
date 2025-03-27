% Revised algorithm, 10 times faster than wedding_woes_1.pl
% The order of atoms in the body of a rule is crucial in performance
% of the Prolog code.

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

pairing(X,Y):-likes(X,Y),likes(Y,X).
pairing(X,Y):-chatty(X);chatty(Y).

seating(G1,G2,G3,G4,G5):-
    guest(G1),
    guest(G2),
    G2 \= G1,
    guest(G3),
    G3 \= G1, G3 \= G2,
    guest(G4),
    G4 \= G1, G4 \= G2, G4 \= G3,
    guest(G5),
    G5 \= G1, G5 \= G2, G5 \= G3, G5 \= G4,
    pairing(G1,G2),
    pairing(G2,G3),
    pairing(G3,G4),
    pairing(G4,G5),
    pairing(G5,G1).

% Measure execution time using get_time/1
measure_time :-
    get_time(Start),
    findall([G1,G2,G3,G4,G5],
            seating(G1,G2,G3,G4,G5),
            Solutions
            ), 
    get_time(End),
    Time is End - Start,
    nl, write('Time: '), write(Time),nl, write(Solutions).

% Example queries
% seating(G1,G2,G3,G4,G5).
% measure_time.
