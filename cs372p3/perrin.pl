% Name: Yujia Lin

perrin(0, 3) :- !.

perrin(1, 0) :- !.

perrin(2, 2) :- !.

perrin(Seqnum, Seqvalue) :-
    Seqnum > 2,
    S1 is Seqnum - 2,
    S2 is Seqnum - 3,
    perrin(S1, Se1),
    perrin(S2, Se2),
    Seqvalue is Se1 + Se2,
    !.
