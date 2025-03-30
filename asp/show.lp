guest(gustavo). guest(valeria). guest(malena).
guest(esteban). guest(jamie).

chatty(gustavo). chatty(valeria).

likes(esteban,malena). likes(malena,esteban). likes(gustavo,valeria).

% -----------------------------------------------------------------------------
notchatty(X) :- guest(X), not chatty(X).

% #show notchatty/1.

% RESULT: notchatty(malena) notchatty(esteban) notchatty(jamie)

dislikes(Y,X) :- guest(X), guest(Y), likes(X,Y), not likes(Y,X).

% #show dislikes/2.

% RESULT: dislikes(valeria,gustavo)

not_likes(X,Y) :- guest(X), guest(Y), not likes(X,Y), X!=Y.

% #show not_likes/2.

%*
 not_likes(valeria,gustavo) not_likes(malena,gustavo) 
not_likes(esteban,gustavo) not_likes(jamie,gustavo) 
not_likes(malena,valeria) not_likes(esteban,valeria) 
not_likes(jamie,valeria) not_likes(gustavo,malena) 
not_likes(valeria,malena) not_likes(jamie,malena) 
not_likes(gustavo,esteban) not_likes(valeria,esteban)
 not_likes(jamie,esteban) not_likes(gustavo,jamie) 
 not_likes(valeria,jamie) not_likes(malena,jamie) 
 not_likes(esteban,jamie) 
 *%