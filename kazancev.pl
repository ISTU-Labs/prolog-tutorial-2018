%1

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

%3

parent(jenya, dima).
parent(natasha, dima).

parent(lida, natasha).
parent(lida, lesha).

male(dima).
male(jenya).
male(lesha).

female(lida).
female(natasha).

maried(natasha, jenya).

mother(X, Y) :-
    parent(X, Y),
    female(X).

father(X, Y) :-
    parent(X, Y),
    male(X).
