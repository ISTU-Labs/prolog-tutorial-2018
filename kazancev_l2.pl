%3
del([], _, []).
del([N | TL], N, R) :- del(TL, N, R).
del([HL | TL], N, [HL | R]) :-
    HL \= N,
    del(TL, N, R).
%9
count([], 0).
count([_ | T], R) :-
    count(T, R1),
    R is R1 + 1.

%8
getlast([N], N).
getlast([_ | T], R) :-
    getlast(T, R).

%13

change([_ | TL], 1, N, [N | TL]).
change([HL | TL], I, N, [HL | R]) :-
    HL \= get([HL | TL], I),
    I1 is I - 1,
    change(TL, I1, N, R).

get([H | _], 1, H).
get([_ | T], N, R) :-
    M is N - 1,
    get(T, M, R).

%16

invert([], []).
invert([H | T], L) :-
    invert(T, L1),
    add(L1, [H], L).

add([], L, L).
add(L, Q, R) :-
    L = [HL | TL],
    add(TL, Q, TR),
    R = [HL | TR].

%19
max([R], R).
max([HL | TL], R) :-
    max(TL, R),
    HL =< R.
max([R | TL], R) :-
    max(TL, M),
    M < R.

%23
% из 19 и 3

%7
isneighbors([E1, E2], E1, E2) :- !.
isneighbors([E1, E2], E2, E1) :- !.

isneighbors([E1, E2 | _], E1, E2) :- !.

isneighbors([HL | TL], E1, E2) :-
    HL = E1,
    ishead(TL, E2), !;
    isneighbors(TL, E1, E2).

ishead([R], R).
ishead([R | _], R).

%1
even([], []) :- !.
even([_, R], [R]) :- !.
even([_, Evennum | T], [Evennum | ET]) :-
    even(T, ET).

%22
sumneg([], 0) :- !.
sumneg([_], 0) :- !.
sumneg([_, R], R) :- R < 0, !.
sumneg([_, R], 0) :- R > 0, !.
sumneg([_, X | T], R) :-
    sumneg(T, R1),
    R is R1 + X,
    X < 0.

%15
sumodd([], 0) :- !.
sumodd([R], R) :- !.
sumodd([X, _ | T], R) :-
    sumodd(T, R1),
    R is R1 + X.

%26
word(1, 'one').
word(2, 'two').
word(3, 'three').
word(4, 'four').
word(5, 'five').
word(6, 'six').
word(7, 'seven').
word(8, 'eight').
word(9, 'nine').
word(0, 'zero').

translate([], []) :- !.
translate([E], [R]) :-
    word(E, R), !.
translate([H | T], R) :-
    R = [HR | TR],
    word(H, HR),
    translate(T, TR).


%25
code(0, []) :- !.
code(N, [1 | TR]) :-
    N1 is N - 1,
    code(N1, TR).
