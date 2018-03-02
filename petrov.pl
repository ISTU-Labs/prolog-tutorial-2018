%1
/*
dog(flash, black).
dog(rover, red).
cat(butsy, brown).
horse(star, white).
pet(X, C):-
    dog(X, C);
    cat(X, C).
animal(X,C):-
    pet(X, C);
    horse(X, C).
owner(tom, X, C):-
    dog(X, C),
    \+ black(X).
owner(kate, X, C):-
    horse(X, C);
    black(X).
*/
%2
cat(butsy, brown).
cat(corny, black).
cat(mactavity, red).

dog(flash, spotty).
dog(rover, red).
dog(spot, white).

owner(tom, X, C):-
