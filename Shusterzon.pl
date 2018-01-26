% animal(dog,cat,horse).
% domestic(dog, cat).

dog(flash,black).
dog(rover,red).
cat(butsy,brown).
horse(star,white).

domestic(X):-dog(X);
