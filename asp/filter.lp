
% Filter or Condition (:) operator

person(alice).
person(bob).
person(charlie).

eligible(alice).
eligible(bob).

% Assign eligible people to a team
1 { team(P) : eligible(P) } 2.

#show team/1.
