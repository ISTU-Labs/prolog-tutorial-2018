
%%%%% Задача о поиске пути в лабиринте  %%%%
% e(X,Y) <-> Между X и Y существует переход.
e(a, b). e(b,c). e(c,f). e(f, g). e(g, i). e(i, h).
e(f, e). e(e,d). e(d,h).
% -(X,Y). X-Y  edge(X,Y).

path(X,Y,[Y]):-e(X,Y).
path(X,Y,[Z|T]):-e(X,Z), path(Z,Y, T).

:-use_module(library(lists)).

% Сортировка пузырьком

bs(L, SL):-
    swap(L, L1),!,
    bs(L1,SL).
bs(L,L).

swap([X,Y|T], [Y,X|T]):-X>Y,!.
swap([X|T], [X|ST]):-swap(T,ST).

% Быстрая сортировка

qs([],[]).
qs([X|T],S):-!,
    split(T,X, L,G),!,
    qs(L,SL),!,
    qs(G,SG),!,
    lists:append(SL,[X|SG],S).

split([],_,[],[]).
split([Y|T], X, [Y|TL], G):-
    Y<X,
    split(T, X, TL, G).

split([Y|T], X, L, [Y|TG]):-
    Y>=X,
    split(T, X, L, TG).


% Перестановки элементов списка

pert([],[]).
pert(L,[X|T]):-del(X,L, TL), pert(TL,T).

del(X,[X|T],T).
del(X,[Y|T],[Y|T2]):-
    del(X,T,T2).

% Вычисление счастливых билетов

the_list([0,1,2,3,4,5,6,7,8,9]).

gen([]).
gen([X|T]):-
    the_list(L),
    lists:member(X,L),
    gen(T).

lucky([A,B,C,D,E,F]):-
    gen([A,B,C,D,E]),
    F is A+B+C-D-E,
    the_list(L),
    lists:member(F, L).


% Отношения

likes(ann, john).
likes(john,jul).
likes(alex,jul).
likes(jack,pat).
likes(pat,jack).
% X=ann -> s={<ann, X>}


lt1(X,Y,Z):-likes(X,Y),likes(Y,Z), X\=Z.
lt2(X,Y,Z):-likes(X,Y),likes(Z,Y), X\=Z.
lt(X,Y,Z):-lt1(X,Y,Z).
lt(X,Y,Z):-lt2(X,Y,Z).

% L=[a,b,c,d], Q=[1,2,3,4,[2,4]], [].
% L=[X,Y|T], X=a, Y=b, T=[c,d].
% K=[v|T], K=[v,c,d], [X|T]=[a,c,d].

% bratko.zip

% Вычисление длины списка

len([], 0).
len([_|T],L):-len(T,LT), L is LT+1.

% Является ли Х элементом списка

mem(X, [X|_]).
mem(X, [_|T]):-mem(X, T).


% Объединение списков
% app(L1, L2, L3) <-> L3 = [X|L1] + L2 = [X|L1+L2].
app([], L, L).
app([X|T1], L2, [X|R]):-app(T1,L2,R).

% (a . (b . ())) [a,b]
% f(X),  socrates ,  f(socrates).
% +(1,2) = 1+2
% d(1+x, x, 1).
% d(1+x, y, 0).



% Вычисление производных

term(X):-atom(X); number(X).

d(X, X, 1):-!.
d(Y, X, 0):-term(Y), Y\=X,!.
d(U+V, X, DU+DV):-
    d(U, X, DU),
    d(V, X, DV).
d(U-V, X, DU-DV):-
    d(U, X, DU),
    d(V, X, DV).
d(U*V, X, DU*V+DV*U):-
    d(U, X, DU),
    d(V, X, DV).
d(U/V, X, (DU*V-DV*U)/(V*V)):-
    d(U, X, DU),
    d(V, X, DV).
d(F, X, E*DArg):-
    F=..[Fs|Args],
    Args=[Arg],
    df(Fs, Arg, E),
    d(Arg, X, DArg).

% Список формул - производных функций

df(sin, Arg, cos(Arg)).
df(lg, Arg, 1/Arg).

% 172.16.19.199

species(flash, dog). % By Definition
species(mac, cat).

species(X, animal):-species(X, dog).
species(X, animal):-species(X, cat).

% \+ g(X).


% owns(tom, X):-cat(X).
% owns(kate, X):- ...

% ?- species(Y, animal).
% ?-      species(X, dog), X=Y. .... X=flash






% drive(vasya, lena, leha).

%is_a_dog(flash).
%cat(mactavity).

% ?- species(flash, X).
% ?- species(Y, dog).
% animal > dog

% color(flash, black).
