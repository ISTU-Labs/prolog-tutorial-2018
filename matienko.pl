dog(flash).
dog(rover).
cat(butsy).
horse(star).
black(flash).
brown(butsy).
ginger(rover).
white(star).
pet(X) :- dog(X); cat(X).
animal(X) :- pet(X) ; horse(X).
owns(tom, X) :- dog(x), \+ black(X).
owns(kate, X) :- horse(X) ; black(X).
