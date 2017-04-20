% Name: Yujia Lin

% two
memberhelpertwo([], []).

memberhelpertwo([X|Subset], List) :-
    member(X, List),
    memberhelpertwo(Subset, List).

% one
memberhelper([], _).

memberhelper([X|Subset], List) :-
    member(X, List),
    memberhelper(Subset, List).

% when first argument is [] and second also is []
subsetofall(Subset, List) :-
    length(Subset, L1),
    not(L1 = 0),
    length(List, L2),
    not(L2 = 0),
    subsetofallhelper(Subset, List),
    !.

% when first argument is [] but second is not []
subsetofall(Subset, List) :-
    length(Subset, L1),
    L1 = 0,
    length(List, L2),
    not(L2 = 0),
    subsetofallhelpertwo(Subset, List),
    !.

% one
subsetofallhelper(_, []) :- !.

subsetofallhelper(Subset, [X|List]) :-
    memberhelper(Subset, X),
    subsetofallhelper(Subset, List).

% two
subsetofallhelpertwo(_, []) :- !.

subsetofallhelpertwo(Subset, [X|List]) :-
    memberhelpertwo(Subset, X),
    subsetofallhelpertwo(Subset, List).
