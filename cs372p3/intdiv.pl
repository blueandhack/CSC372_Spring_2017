% Name: Yujia Lin

intdiv(_, 0, _) :-
    write('ERROR: intdiv/3: Arithmetic: evaluation error: ‘zero_divisor’').

intdiv(Dividend, Divisor, Quotient) :-
    Dividend < Divisor,
    Quotient is 0,
    !.

intdiv(Dividend, Divisor, Quotient) :-
    Dividend >= Divisor,
    D is Dividend - Divisor,
    intdiv(D, Divisor, Q),
    Quotient is Q + 1,
    !.
