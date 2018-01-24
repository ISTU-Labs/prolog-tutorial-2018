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
% L=[X|T], X=a, T=[b,c,d].
% K=[v|T], K=[v,b,c,d].

% bratko.zip

len([], 0).
len([_|T],L):-len(T,LT), L is LT+1.

mem(X, [X|_]).
mem(X, [_|T]):-mem(X, T).

% app(L1, L2, L3) <-> L3 = [X|L1] + L2 = [X|L1+L2].
app([], L, L).
app([X|T1], L2, [X|R]):-app(T1,L2,R).

% (a . (b . ())) [a,b]
% f(X),  socrates ,  f(socrates).
% +(1,2) = 1+2
% d(1+x, x, 1).
% d(1+x, y, 0).

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


df(sin, Arg, cos(Arg)).
df(lg, Arg, 1/Arg).
