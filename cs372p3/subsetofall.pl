% Name: Yujia Lin

% two
memberhelpertwo([], []).

memberhelpertwo([X|Subset], List) :-
    % write(Subset),nl,
    member(X, List),
    memberhelpertwo(Subset, List).

% one
memberhelper([], _).

memberhelper([X|Subset], List) :-
    % write(Subset),nl,
    member(X, List),
    memberhelper(Subset, List).

% when first argument is [] and second also is []
subsetofall(Subset, List) :-
    length(Subset, L1),
    % write(L1),nl,
    not(L1 = 0),
    length(List, L2),
    % write(L2),nl,
    not(L2 = 0),
    subsetofallhelper(Subset, List).

% when first argument is [] but second is not []
subsetofall(Subset, List) :-
    length(Subset, L1),
    % write(L1),nl,
    L1 = 0,
    length(List, L2),
    % write(L2),nl,
    not(L2 = 0),
    subsetofallhelpertwo(Subset, List).

% one
subsetofallhelper(_, []) :-
    % write(Subset),nl,
    !.

subsetofallhelper(Subset, [X|List]) :-
    % write(X),nl,
    memberhelper(Subset, X),
    subsetofallhelper(Subset, List).

% two
subsetofallhelpertwo(_, []) :-
    % write(Subset),nl,
    !.

subsetofallhelpertwo(Subset, [X|List]) :-
    % write(X),nl,
    memberhelpertwo(Subset, X),
    subsetofallhelpertwo(Subset, List).
