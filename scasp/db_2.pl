
% no need to install the library, it is already included in 
% the windows distribution
:- use_module(library(scasp)). % include the scasp package.
:- style_check(-singleton). % remove warning due to singletons.

% Database

% Facts
employee(john).
suspended(john).
employee(amy).

% Rules
access(X) :- employee(X), not suspended(X).

% Query
% ?? not access(X).
% ?? access(X).
