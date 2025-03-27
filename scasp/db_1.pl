
% no need to install the library, it is already included in 
% the windows distribution

:- use_module(library(scasp)). % include the scasp package.
:- style_check(-singleton). % remove warning due to singletons.

% This will create an infinite loop in Prolog
p(X) :- not q(X).
q(X) :- not p(X).
