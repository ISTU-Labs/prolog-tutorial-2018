 num(X) :- member(X, [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]).
/*gen([]).
gen([X | T]) :- num(X), gen(T).
p([A, B, C, D, E, F]) :-
    A + B + C =:= D + E + F.
lucky([A, B, C, D, E, F]) :-
    gen([A, B, C, D, E, F]),
    p([A, B, C, D, E, F]).

count(N) :- findall(Ticket, lucky(Ticket), Tickets), length(Tickets, N).
*/

%3
getlast([X], X) :- !.
getlast([_ | T], R) :-
    getlast(T, R).

dellast([_], []) :- !.
dellast([H | T], [H | TR]) :-
    dellast(T, TR).

pol([X]) :- num(X), !.
pol([X, X]) :- num(X), !.
pol([H | T]) :-
    getlast(T, H),
    dellast(T, T1),
    pol(T1).

%6
/*
getsolution(S) :-
    S = [1/_, 2/_, 3/_, 4/_, 5/_, 6/_, 7/_, 8/_],
    solution(S).

solution([]).
solution([X/Y | Others]) :-
    solution(Others),
    member(Y, [1, 2, 3, 4, 5, 6, 7, 8]),
    nokill(X/Y, Others).

nokill(_, []).
nokill(X/Y, [X1/Y1 | Others]) :-
    Y =\= Y1,
    Y1 - Y =\= X1 - X,
    Y1 - Y =\= X - X1,
    nokill(X/Y, Others).
*/

%19

nokill(_, []).
nokill([X, Y]) :-
    4 - X =\= 2, Y - 5 =\= 1.
    %(4 - X = 1, Y - 5 = 2);
    %(X - 4 = 1, Y - 5 = 2);
    %(X - 4 = 2, Y - 5 = 1);
    %(X - 4 = 2, 5 - Y = 1);
    %(X - 4 = 1, 5 - Y = 2);
    %(4 - X = 1, 5 - Y = 2);
    %(4 - X = 2, 5 - Y = 1).
