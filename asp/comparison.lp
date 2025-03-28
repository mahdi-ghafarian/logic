
% {a(1..3,1..3)}: This is a choice rule that generates atoms a(X, Y) 
% for all combinations of X and Y within the range 1..3.
% = 1: This part specifies that exactly one of the atoms in the
%  set {a(1..3,1..3)} must be true in any valid answer set.
{a(1..3,1..3)} = 1.
% or the standard format:
%  1{a(1..3,1..3)}1.

% comparison 
b(X,Y) :- a(X,Y), X > Y.
