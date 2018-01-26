% animal(dog,cat,horse).
% domestic(dog, cat).

dog(flash,black).
dog(rover,red).
cat(butsy,brown).
horse(star,white).

black(flash).
red(rover).
brown(butsy).
white(star).

owner(tom,X,Y):- dog(X,Y), \+ black(X).
owner(kate,X,Y):- horse(X,Y); black(X).


domestic(X,Y):- dog(X,Y);cat(X,Y).
animal(X,Y):- domestic(X,Y);horse(X,Y).
