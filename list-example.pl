
invert(A,B):-
    invert0(A,[],B).

invert0([],L,L).
invert0([X|T],L,B):-
    invert0(T,[X|L],B).
