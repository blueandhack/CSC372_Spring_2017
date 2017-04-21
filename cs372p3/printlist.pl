% printlist.pl
% Name: Yujia Lin
% TAs' name: Andrea Padula, Patrick Hickey
% Program 03
% ----------
% 4. Print First, Third, Fifth, etc., Elements of a List.
% The program will print odd index element from a list.
%
% ?- print135([]).
% true.
%
% ?- print135([k,l,m,n,o,p,q]).
% k
% m
% o
% q
% true.
%
% ?- print135([r,s,t,u]).
% r
% t
% true.
%

% Base case: the list is empty, then stop the program.
print135([]).

% The predicate call other predicate
print135(List) :-
    printhelper(List, 1), !.

% Base case for printhelper: the list is empty, then stop.
printhelper([], _).

% When index is 1, then print the element
printhelper([X|List], Index) :-
    Index =:= 1,
    write(X),nl,
    I is Index + 1,
    printhelper(List, I).

% When index is 3, then print the element
printhelper([X|List], Index) :-
    Index =:= 3,
    write(X),nl,
    I is Index + 1,
    printhelper(List, I).

% When index is 5, then print the element
printhelper([X|List], Index) :-
    Index =:= 5,
    write(X),nl,
    I is 0,
    printhelper(List, I).

% When index is not 1,3,5, then it does not print and just pass
printhelper([_|List], Index) :-
    I is Index + 1,
    printhelper(List, I).
