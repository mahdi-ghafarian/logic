% Abduction

% Facts
wet_floor.

% Rules
wet_floor :- rain, window_open.
wet_floor :- pipe_leak.
wet_floor :- water_spilled.

% Possible explanations, i.e., abducibles
% note that these are not facts and stated as rules
rain :- not -rain. % rain is possiblly true
window_open :- not -window_open. % window_open is possiblly true
% water_spilled :- not -water_spilled. % water_spilled is possiblly true

% Integrity Constraints, If it rains, we close the window
:- rain, not window_open.

