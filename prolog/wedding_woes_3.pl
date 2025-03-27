% This code is clean but performance is similar to wedding_woes_1.pl
% because it als checks all the combinations of guests with replacement
% n=5^5=3125 combinations

chatty(gustavo).
chatty(valeria).

likes(esteban,malena).
likes(malena,esteban).
likes(gustavo,valeria).

pairing(X,Y):-likes(X,Y),likes(Y,X).
pairing(X,Y):-chatty(X);chatty(Y).

seating(G):-
    % create all combinations of guests (with replacement)
    G=[G1,G2,G3,G4,G5],
    Guests = [gustavo, valeria, malena, esteban, jamie],
    member(G1, Guests),
    member(G2, Guests), 
    member(G3, Guests),
    member(G4, Guests),
    member(G5, Guests),
    % check if all guests are different
    all_different(G),
    % arrange guests in a circle
    pairing(G1,G2),
    pairing(G2,G3),
    pairing(G3,G4),
    pairing(G4,G5),
    pairing(G5,G1).

% Check if all elements in a list are different
all_different(X) :-
    X=[X1, X2, X3, X4, X5],
    X1 \= X2, X1 \= X3, X1 \= X4, X1 \= X5,
    X2 \= X3, X2 \= X4, X2 \= X5,
    X3 \= X4, X3 \= X5,
    X4 \= X5.

% Measure execution time using get_time/1
measure_time :-
    get_time(Start),
    findall(Guests,
            seating(Guests),
            Solutions
            ), 
    get_time(End),
    Time is End - Start,
    nl, write('Time: '), write(Time),nl, write(Solutions).

% Example queries
% seating(G).
% measure_time.
