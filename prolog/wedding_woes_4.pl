% This code has a better syntax and as efficient as wedding_woes_2.pl
guest(gustavo).
guest(valeria).
guest(malena).
guest(esteban).
guest(jamie).

chatty(gustavo).
chatty(valeria).

likes(esteban, malena).
likes(malena, esteban).
likes(gustavo, valeria).

% Pairing rule: Guests are paired if they like each other mutually or one is chatty
pairing(X, Y) :-
    (likes(X, Y), likes(Y, X));
    (chatty(X); chatty(Y)).

% Seating rule: Valid seating arrangement for 5 guests
seating(G1, G2, G3, G4, G5) :-
    Guests = [G1, G2, G3, G4, G5],
    maplist(guest, Guests),          % Ensure all are valid guests
    all_different(Guests),           % Enforce all guests are unique
    pairing(G1, G2),                 % Apply pairing constraints
    pairing(G2, G3),
    pairing(G3, G4),
    pairing(G4, G5),
    pairing(G5, G1).

% Helper predicate to ensure all elements in a list are different
all_different([]).
all_different([H|T]) :-
    maplist(dif(H), T),
    all_different(T).

% Measure execution time using get_time/1
measure_time :-
    get_time(Start),
    findall([G1, G2, G3, G4, G5],
            seating(G1, G2, G3, G4, G5),
            Solutions),
    get_time(End),
    Time is End - Start,
    nl, write('Time: '), write(Time), nl, write(Solutions).