% Deriving answer sets manually
open :- not closed.
closed :- not open.

%* 
https://dl.acm.org/doi/pdf/10.1145/2043174.2043195
we do not know 
which atoms cannot be derived, there
fore, we cannot verify the conditions 
for applying any of the rules. 
A way out of the problem is to start 
by assuming which atoms will not be 
derived. For instance, let us assume 
that closed will not be derived. Then, 
the first rule can be used and we can es
tablish open. Since open is established, 
the second rule cannot be used and 
closed indeed will not be established, 
verifying our assumption. Thus, the 
set {open} is justified by the program 
*%


%* 
Solving...
Answer: 1
closed
Answer: 2
open
SATISFIABLE
 *%
