% Name: Yujia Lin

perrrin(1, 0).

perrrin(2, 2).

perrrin(Seqnum, Seqvalue) :-
    Seqnum > 2,
    S1 is Seqnum - 2,
    S2 is Seqnum - 3,
    perrrin(S1, Se1),
    perrrin(S2, Se2),
    Seqvalue is Se1 + Se2.
