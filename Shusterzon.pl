dog(Flash).
dog(Rover).
cat(Butsy).
horse(Star).

black(Flash).
brown(Butsy).
red(Rover).
white(Star).

domestic(X):-cat(X),dog(X).
animal(X):-domesti(X),horse(X).
