% Name: Yujia Lin
% Surface area and volume of sheres

spherearea(Radius, Area) :-
    Area is 4.0 * pi * Radius * Radius.

spherevolume(Radius, Volume) :-
    spherearea(Radius, Area),
    Volume is 1/3 * Radius * Area,
    !.
