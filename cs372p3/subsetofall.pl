% subsetofall.pl
% Name: Yujia Lin
% TAs' name: Andrea Padula, Patrick Hickey
% Program 03
% ----------
% 7. A subset of all sets?
% The program will check given and a set of sets, is the first set a subset of all the sets in the set of sets?
% Such as
%
% ?- subsetofall([a],[[a,b],[v,a],[c,d,a]]).
% true.
%
% ?- subsetofall([a],[[a,b],[v,a],[c,d]]).
% false.
%
% ?- subsetofall([a],[[],[],[a]]).
% false.
%
% ?- subsetofall([],[[],[],[]]).
% true.
%

% Baese case for method two: if two lists are empty, then stop.
memberhelpertwo([], []).

% Check an element in a list by member function
memberhelpertwo([X|Subset], List) :-
    member(X, List),
    memberhelpertwo(Subset, List).

% Baese case: if two lists are empty, then stop.
memberhelper([], _).

% Check an element in a list by member function
memberhelper([X|Subset], List) :-
    member(X, List),
    memberhelper(Subset, List).

% When first argument is [] and second also is []
subsetofall(Subset, List) :-
    length(Subset, L1),
    not(L1 = 0),
    length(List, L2),
    not(L2 = 0),
    subsetofallhelper(Subset, List),
    !.

% When first argument is [] but second is not []
subsetofall(Subset, List) :-
    length(Subset, L1),
    L1 =:= 0,
    length(List, L2),
    not(L2 = 0),
    subsetofallhelpertwo(Subset, List),
    !.

% Base case: if last list is empty, then stop.
subsetofallhelper(_, []) :- !.

% Check an set in an element of set
subsetofallhelper(Subset, [X|List]) :-
    memberhelper(Subset, X),
    subsetofallhelper(Subset, List).

% Base case for method two: if last list is empty, then stop.
subsetofallhelpertwo(_, []) :- !.

% Check an set in an element of set
subsetofallhelpertwo(Subset, [X|List]) :-
    memberhelpertwo(Subset, X),
    subsetofallhelpertwo(Subset, List).
