% sphere.pl
% Name: Yujia Lin
% TAs' name: Andrea Padula, Patrick Hickey
% Program 03
% ----------
% 1. Surface area and volume of sheres.
% The program has two predicates that are spherearea(radius,area), spherevolume(radius,volume).
% So, spherearea can calcualte sphere's area.
% And spherevolume can calcualte sphere's volume.

% It takes Radius to get Area, then return Area. So it use formula that is 4 * pi * radius ^ 2.
spherearea(Radius, Area) :-
    Area is 4.0 * pi * Radius * Radius.

% It takes Radius to get Volume, and the predicate will call spherearea predicate,
% becuase it is easy to use formula that is 1/3 * radius * (sphere's area) = sphere's volume.
spherevolume(Radius, Volume) :-
    spherearea(Radius, Area),
    Volume is 1/3 * Radius * Area,
    !.
