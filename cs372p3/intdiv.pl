% intdiv.pl
% Name: Yujia Lin
% TAs' name: Andrea Padula, Patrick Hickey
% Program 03
% ----------
% 2. Integer Division via Subtraction.
% The program will use recursive to simulate the division operation.
%
% ?- intdiv(15,4,X).
% X = 3.
%
% ?- intdiv(6,7,X).
% X = 0.
%
% ?- intdiv(12,0,X).
% ERROR: intdiv/3: Arithmetic: evaluation error: ‘zero_divisor’
%

% When divisor is zero, then print error message.
intdiv(_, 0, _) :-
    write('ERROR: intdiv/3: Arithmetic: evaluation error: ‘zero_divisor’'), !.

% If dividend less than divisor, then quotient is zero.
intdiv(Dividend, Divisor, Quotient) :-
    Dividend < Divisor,
    Quotient is 0, !.

% If dividend great than divisor, then it uses the dividend minus the divisor and get a new dividend.
intdiv(Dividend, Divisor, Quotient) :-
    Dividend >= Divisor,
    D is Dividend - Divisor,
    intdiv(D, Divisor, Q),
    Quotient is Q + 1, !.
