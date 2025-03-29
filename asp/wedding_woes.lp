
%-----------------------------------------------------------------------------
% PARAMETERS
%-----------------------------------------------------------------------------
#const n=5.

%-----------------------------------------------------------------------------
% FACTS
%-----------------------------------------------------------------------------
guest(gustavo). guest(valeria). guest(malena).
guest(esteban). guest(jamie).

chatty(gustavo). chatty(valeria).

likes(esteban,malena). likes(malena,esteban). likes(gustavo,valeria).

%-----------------------------------------------------------------------------
% 1. GENERATE (CHOICES)
%-----------------------------------------------------------------------------
% Generate models, X is the chair number, G is the guest
% Each guest must be assigned to one chair
{ at(X, G) : guest(G) } = 1 :- X = 1..n.

%-----------------------------------------------------------------------------
% 2. DEFINE (UTILITY RULES)
%-----------------------------------------------------------------------------
% adj(G1,G2) means that G1 and G2 are in adjacent chairs
adj(G1,G2) :- at(X1,G1), at(X2,G2), |X1-X2|=1,
    X1=1..n, X2=1..n, X1!=X2.
% also add the case where the first and last chairs are adjacent
% (circular table)
adj(G1,G2) :- at(X1,G1), at(X2,G2), |X1-X2|=n-1,
    X1=1..n, X2=1..n, X1!=X2.
% another way of writing the above rule
% adj(G1,G2) :- at(1,G1), at(n,G2).
% adj(G1,G2) :- at(n,G1), at(1,G2).

%-------------------------------------------------------------------------------
% 3. TEST (CONSTRAINTS)
%-------------------------------------------------------------------------------
% remove case where a guest is in two chairs
:- at(X1,G), at(X2,G), X1!=X2.

% remove cases where two people are adjacent but are not chatty 
% and do not like eachother
:- adj(G1,G2), not chatty(G1), not chatty(G2), 
    not likes(G1,G2),not like(G2,G1), guest(G1), guest(G2).

% rermove rotations of the same arrangement
:- not at(1,gustavo).

%-------------------------------------------------------------------------------
% 4. OUTPUT
%-------------------------------------------------------------------------------
% table is used to display the final arrangement
table(G1,G2,G3,G4,G5) :- at(1,G1), at(2,G2), at(3,G3), at(4,G4), at(5,G5).

% #show at/2.
% #show guest/1.
% #show pairing/2.
% #show adj/2.
#show table/5.