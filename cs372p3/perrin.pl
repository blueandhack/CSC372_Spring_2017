% perrin.pl
% Name: Yujia Lin
% TAs' name: Andrea Padula, Patrick Hickey
% Program 03
% ----------
% The progmram will calculate Perrin Sequence.

% Base case:
% p(0) = 3
perrin(0, 3) :- !.
% p(1) = 0
perrin(1, 0) :- !.
% p(2) = 2
perrin(2, 2) :- !.

% It takes sequence number is Seqnum, then use the formula to get
% The formula is
perrin(Seqnum, Seqvalue) :-
    Seqnum > 2,
    S1 is Seqnum - 2,
    S2 is Seqnum - 3,
    perrin(S1, Se1),
    perrin(S2, Se2),
    Seqvalue is Se1 + Se2,
    !.
