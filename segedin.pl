#1-2
dog(flash).
dog(rover).
dog(spot).
cat(butsy).
cat(korney).
cat(mv).
horse(star).
black(flash).
black(korney).
brown(butsy).
red(rover).
red(mv).
while(star).
while(spot).
pyatnistaya(flash).
homepet(X) :- dog(X) ; cat(X).
pet(X) :- homepet(X) ; horse(X).
rodoslow(X) :- owns(tom, X); owns(kate, X).
owns(tom, X) :- dog(X), \+ black(X); black(X); brown(X).
owns(kate, X) :- horse(X) ; black(X); dog(X), \+ owns(tom, X), \+ while(X).
owns(alan, X) :- X = mv, owns(kate, butsy), rodoslow(spot).



#3

man(ruslan).
man(alexandr).
man(alexey).
woman(anya).
womam(karina).
parent(ruslan, alexandr).
parent(ruslan, alexey).
parent(ruslan, karina).
parent(anya, alexandr).
parent(anya, alexey).
parent(anya, karina).
synowya(X, Y) :- parent(X, Y), man(Y).
docheri(X, Y) := parent(X, Y), woman(Y).


#4

fruit(persik).
fruit(apple).

colour(yellow.
colour(orange(apelsin)).
likes
