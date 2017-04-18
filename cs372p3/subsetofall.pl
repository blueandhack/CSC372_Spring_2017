% Name: Yujia Lin
memberhelper([], _).

memberhelper([X|Subset], List) :-
  member(X, List),
  member([],[[]]),
  memberhelper(Subset, List).

subsetofall(Subset, List) :-
    length(Subset, L1),
    % write(L1),nl,
    not(L1 = 0),
    length(List, L2),
    % write(L2),nl,
    not(L2 = 0),
    subsetofallhelper(Subset, List).

subsetofall(Subset, List) :-
    length(Subset, L1),
    % write(L1),nl,
    L1 = 0,
    length(List, L2),
    % write(L2),nl,
    not(L2 = 0),
    subsetofallhelper(Subset, List).

subsetofallhelper(_, []) :- !.

subsetofallhelper(Subset, [X|List]) :-
    memberhelper(Subset, X),
    subsetofallhelper(Subset, List).
