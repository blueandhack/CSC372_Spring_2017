% delfromlist.pl
% Name: Yujia Lin
% TAs' name: Andrea Padula, Patrick Hickey
% Program 03
% ----------
% 5. Delete from List (Repeatedly).
% The program will delete an element from list.
%
% ?- delfromlist(1,[1],X).
% X = [].
%
% ?- delfromlist(a,[a,b,r,a,c,a,d,a,b,r,a],X).
% X = [b, r, c, d, b, r].
%

% Base case: List and result list is empty, then stop the program.
delfromlist(_, [], []) :- !.

% If this element is the element we want to remove, then we just pass.
delfromlist(Element, [Element|List], Result) :-
    delfromlist(Element, List, Result), !.

% If this element is not the element we want to remove, then we add the element to result list.
delfromlist(Element, [X|List], [X|Result]) :-
    X \== Element,
    delfromlist(Element, List, Result),
    X \== Element.
