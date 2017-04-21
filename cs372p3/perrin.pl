% perrin.pl
% Name: Yujia Lin
% TAs' name: Andrea Padula, Patrick Hickey
% Program 03
% ----------
% 3. Perrin Sequence.
% The progmram will calculate Perrin Sequence.
%
% ?- perrin(0,X).
% X = 3.
%
% ?- perrin(10,X).
% X = 17.
%

% Base case:
% p(0) = 3
perrin(0, 3) :- !.
% p(1) = 0
perrin(1, 0) :- !.
% p(2) = 2
perrin(2, 2) :- !.

% It takes sequence number is Seqnum, then use the formula to get
% The formula is p(n) = p(n-2) + p(n-3).
perrin(Seqnum, Seqvalue) :-
    Seqnum > 2,
    S1 is Seqnum - 2,
    S2 is Seqnum - 3,
    perrin(S1, Se1),
    perrin(S2, Se2),
    Seqvalue is Se1 + Se2, !.
