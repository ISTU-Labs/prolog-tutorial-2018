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

getfirst(L, N) :-
    L = [HL | _],
    N = HL.

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
