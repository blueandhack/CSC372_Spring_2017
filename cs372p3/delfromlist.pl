% delfromlist.pl
% Name: Yujia Lin
% TAs' name: Andrea Padula, Patrick Hickey
% Program 03
% ----------

delfromlist(_, [], []) :- !.

delfromlist(Element, [Element|List], Result) :-
    delfromlist(Element, List, Result),
    !.

delfromlist(Element, [X|List], [X|Result]) :-
    X \== Element,
    delfromlist(Element, List, Result),
    X \== Element.
