% Abduction

% Facts
% (1) run with wet_floor
% (2) select (-wet_fllor) to see how abduction works
wet_floor. % satisfiable
% - wet_floor. % unsatisfiable

% Rules
wet_floor :- rain, window_open.
wet_floor :- pipe_leak.
wet_floor :- water_spilled.

% Possible explanations, i.e., abducibles
% note that these are not facts and stated as rules
water_spilled :- not -water_spilled. % water_spilled is possiblly true