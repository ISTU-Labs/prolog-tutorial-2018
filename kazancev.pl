%1

dog(flash, black).

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
parent(jenya, oleg).
parent(natasha, dima).
parent(natasha, oleg).

parent(lida, natasha).
parent(lida, lesha).
parent(boris, natasha).
parent(boris, lesha).

male(dima).
male(jenya).
male(lesha).
male(oleg).
male(boris).

female(lida).
female(natasha).

maried(jenya, natasha).
maried(boris, lida).

mother(X, Y) :-
    parent(X, Y),
    female(X).

father(X, Y) :-
    parent(X, Y),
    male(X).

%4

color(red).
color(yellow).
color(orange).

apple(C) :-
    color(C),
    C \= orange.

peach(C) :-
    color(C),
    C = yellow.

corn(C).

mery(X) :-
