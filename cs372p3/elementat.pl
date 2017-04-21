% elementat.pl
% Name: Yujia Lin
% TAs' name: Andrea Padula, Patrick Hickey
% Program 03
% ----------
% 6. Element At.
% The program will print a element from a list by index.
%
% ?- elementat(1,[x,y,z],X).
% X = y.
%
% ?- elementat(3,[x,y,z],X).
% false.
%

% The predicate call other predicate, and the index from 0.
elementat(Index, List, Element) :-
    elementathelper(Index, List, Element, 0).

% If the index equals the index that we want find, then return it.
elementathelper(Index, [X|_], Element, I) :-
    Index =:= I,
    Element = X, !.

% If the index does not equal the index that we want to find, then pass it.
elementathelper(Index, [_|List], Element, I) :-
    B is I + 1,
    elementathelper(Index, List, Element, B).
