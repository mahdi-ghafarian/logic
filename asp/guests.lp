% sample input
#const n =6.
like (1 ,2; 3 ,4).
dislike (2 ,3; 1 ,3).

 % There are n chairs around a table . Choose a chair
2 % for each of n guests so that guests who like each
3 % other sit next to each other and guests who don ’ t
4 % like each other sit at least one chair away .
5
6 % input : positive integer n ; set like /2 of pairs
7 % of guests who like each other ; set dislike /2
8 % of pairs of guests who dislike each other .
9
10 1 { at (1.. n , C )} 1 : - C =1.. n .
11 % achieved : for each chair C , there is exactly one
12 % guest G such that at (G , C ).
13
14 C1 = C2 : - at (G , C1 ) , at (G , C2 ).
15 % achieved : no guest is assigned to two chairs .
16
17 adj (X , Y ) : - X =1.. n , Y =1.. n , |X - Y |=1.
18 adj (1 , n ; n ,1).
19 % achieved : adj (X , Y ) iff chairs X and Y are next to
20 % each other .
21
22 : - like ( G1 , G2 ) , at ( G1 , C1 ) , at ( G2 , C2 ) , not adj ( C1 , C2 ).
23 % achieved : guests who like each other sit next to
24 % each other .
25
26 : - dislike ( G1 , G2 ) , at ( G1 , C1 ) , at ( G2 , C2 ) , adj ( C1 , C2 ).
27 % achieved : guests who don ’ t like each other don ’ t
28 % sit next to each other .
29
30 # show at /2.
