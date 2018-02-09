%1
/*
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
*/


%2
/*
cat(butsi).
cat(corni).
cat(mac).

dog(flash, spotted).
dog(rover, red).
dog(spot, white).

broun(butsi).
black(corni).
red(mac).

spotted(flash).
red(rover).
white(spot).

owner(tom, X) :-
    broun(X);
    black(X).

owner(kate, X) :-
    dog(X, _),
    \+ white(X),
    \+ owner(tom, X).

hasparent(X) :-
    owner(tom, X);
    owner(kate, X).

owner(alan, X) :-
    X = mac,
    \+ owner(kate, butsi),
    \+ hasparent(spot).

hasntowner(X) :-
    (dog(X, _);
    cat(X)),
    \+ owner(_, X).
*/
%3
/*
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
*/


%4

fruit(peach).
fruit(apple).

red(apple).
yellow(apple).
yellow(peach).

other(corn).

color(apple, red).
color(apple, yellow).
color(peach, yellow).

likes(marry, peach).
likes(marry, corn).
likes(marry, apple).

likes(bet, X) :-
    likes(marry, X),
    fruit(X),
    red(X).

likes(bet, X) :-
    likes(marry, X),
    other(X).



%5
/*
parent(pam, bob).
parent(tom, bob).
parent(tom, lis).
parent(bob, ann).
parent(bob, pat).
parent(pat, jim).

male(tom).
male(bob).
male(jim).

female(pam).
female(lis).
female(ann).
female(pat).

child(X, Y) :-
    parent(Y, X).

grandparent(X, Y) :-
    parent(Z, Y),
    parent(X, Z).

mother(X, Y) :-
    parent(X, Y),
    female(X).

ancestor(X, Y) :-
    parent(X, Y).

ancestor(X, Y) :-
    parent(Z, Y),
    ancestor(X, Z).
*/
%6
/*
big(bear).
big(elephant).
small(cat).

broun(bear).
gray(elephant).
black(cat).

dark(X) :-
    broun(X);
    black(X).
*/
%7

day(marry).
day(susan).
day(jane).

night(sam).
night(jane).
night(bob).
night(pat).

knows(X, Y) :-
	((day(X), day(Y));
	(night(X), night(Y))),
	X \= Y.




%8

company(amtrack, ny, bos).
company(amtrack, bos, por).
company(amtrack, ny, was).

company(transit, nym, pri).

company(grayhound, bos, por).

company(peoples, ny, was).
company(peoples, bir, ny).

competitor(X, Y) :-
    company(X, O1, I1),
    company(Y, O2, I2),
    O1 = O2, I1 = I2,
    X \= Y.

travel(C, O, I) :-
    company(C, O, I).

travel(C, O, I) :-
    company(_, O, I1),
    travel(_, I1, I).


%9

group1(ivanov).
group1(petrov).

group2(sidorov).
group2(semenov).
group2(ololoev).

knows(X, Y) :-
    ((group1(X), group1(Y));
     (group2(X), group2(Y))),
    X \= Y.

%11

father(tom, bob).
father(tom, john).
father(bob, jim).
father(bob, sam).

brother(tom, ron).
brother(bob, john).
brother(jim, sam).

uncle(X, Y) :-
    father(Z, X),
    (brother(Z, Y);brother(Y, Z)).

%12

parent(pam, liz).
parent(pam, ann).

parent(ann, marry).
parent(liz, susan).

sister(X, Y) :-
    parent(Z, X),
    parent(Z, Y),
    X \= Y.

aunt(X, Y) :-
    parent(Z, Y),
    (sister(Z, X), !;sister(X, Z)).
