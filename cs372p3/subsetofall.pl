% Name: Yujia Lin
memberhelper(Subset, List) :-
    Subset == [],
    List == [],
    !.

memberhelper([], _).

memberhelper([X|Subset], List) :-
  member(X, List),
  memberhelper(Subset, List).


subsettofall(Subset, List) :-
    Subset == [],
    List == [],
    !.

subsettofall(_, []).

subsettofall(Subset, [X|List]) :-
  memberhelper(Subset, X),
  subsettofall(Subset, List).
