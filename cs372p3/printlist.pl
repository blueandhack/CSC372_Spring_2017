% Name: Yujia Lin

print135([]).

print135(List) :-
    printhelper(List, 1),
    !.

printhelper([], _).

printhelper([X|List], Index) :-
    Index =:= 1,
    write(X),nl,
    I is Index + 1,
    printhelper(List, I).

printhelper([X|List], Index) :-
    Index =:= 3,
    write(X),nl,
    I is Index + 1,
    printhelper(List, I).

printhelper([X|List], Index) :-
    Index =:= 5,
    write(X),nl,
    I is 0,
    printhelper(List, I).

printhelper([_|List], Index) :-
    I is Index + 1,
    printhelper(List, I).
