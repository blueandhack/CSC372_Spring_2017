% Name: Yujia Lin

delfromlist(_, [], []).

delfromlist(Element, [Element|List], Result) :-
    delfromlist(Element, List, Result).

delfromlist(Element, [X|List], [X|Result]) :-
    X \== Element,
    delfromlist(Element, List, Result),
    X \== Element.
