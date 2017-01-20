%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Assignment: Homework #1: SWI-Prolog Exercise
% Author: Your Name (Your E-mail Address)
% TAs: Patrick Hickey / Andrea Padula
%
% Course: CSc 372
% Instructor: L. McCann
% Due Date: January 20, 2017
%
% Description: A simple type-in exercise to ensure that students
% are able to successfully use SWI-Prolog on lectura.
%
% Language: Prolog (swipl)
% Ex. Packages: None.
%
% Deficiencies: None.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%% Facts: Which Connecticut counties border which others?

bordering(fairfield,litchfield).
bordering(fairfield,newhaven).
bordering(litchfield,hartford).
bordering(litchfield,newhaven).
bordering(newhaven,middlesex).
bordering(newhaven,hartford).
bordering(hartford,tolland).
bordering(hartford,middlesex).
bordering(hartford,newlondon).
bordering(tolland,windham).
bordering(tolland,newlondon).
bordering(middlesex,newlondon).
bordering(windham,newlondon).

%%% Rules:

    % adjacent(X,Y) -- Counties X and Y share a border.

adjacent(X,Y) :- bordering(X,Y).
adjacent(X,Y) :- bordering(Y,X).

    % nearby(X,Y) -- Intent: Counties X and Y are separated by no more than
    %                one other county.

nearby(X,Y) :- bordering(X,Z), bordering(Z,Y).
