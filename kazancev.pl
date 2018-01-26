dog(flash).
dog(rover).
cat(butsi).
horse(star).

black(flash).
broun(butsi).
red(rover).
white(star).

pat(X) :-
    dog(X);
    cat(X).

animal(X) :-
    pat(X);
    horse(X).

owner(tom, X) :-
    dog(X),
    \+ black(X).

owner(kate, X) :-
    horse(X);
    black(X).
