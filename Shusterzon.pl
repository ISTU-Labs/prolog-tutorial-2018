
%  7
%day(mary).
%day(suezy).
%day(jane).

%night(sam).
%night(jane).
%night(bob).
%night(patricia).
%recognize(X,Y):-day(X),day(Y);night(X),night(Y).





%  8

way(newyork,boston).
way(newyork,prinston).
way(newyork,washington).
way(birlington,newyork).
way(boston,portland).
way_is_exist(X,Z):-way(X,Z).
way_is_exist(X,Z):-way(X,Y),way_is_exist(Y,Z).
