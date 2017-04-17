% Name: Yujia Lin
% memberhelper(Subset, List) :-
%     L1 is 0,
%     length(Subset, L1),
%     L1 == 0,
%     L2 is 0,
%     length(List, L2),
%     L2 == 0,
%     false.

memberhelper([], _).
    % L1 is 0,
    % lenght(List, L1),
    % L1 \== 0.

memberhelper([X|Subset], List) :-
  member(X, List),
  % member([],[[]]),
  memberhelper(Subset, List).


% subsetofall(Subset, List) :-
%     L1 is 0,
%     length(Subset, L1),
%     L1 == 0,
%     L2 is 0,
%     length(List, L2),
%     L2 == 0,
%     false.

subsetofall(_, []).
    % L1 is 0,
    % length(Subset, L1),
    % write(L1),
    % L1 \== 0.

subsetofall(Subset, [X|List]) :-
  memberhelper(Subset, X),
  subsetofall(Subset, List).
