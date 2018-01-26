dog(flash, black).
dog(rover, red).
cat(butsi, broun).
horse(star, white).

black(flash).
broun(butsi).
red(rover).
white(star).

pat(X, C) :-
    dog(X, C);
    cat(X, C).

animal(X, C) :-
    pat(X, C);
    horse(X, C).

owner(tom, X, C) :-
    dog(X, C),
    \+ black(X).

owner(kate, X, C) :-
    horse(X, C);
    black(X).
