-module(first).
-export([double/1, mult/2, area/3, square/1, treble/1]).

% Multiplies X and Y
mult(X,Y) ->
  X*Y.

% Doubles the amount of X
double(X) ->
  mult(2, X).

% Squares X
square(X) ->
  mult(X, X).

% Triples the amount of X
treble(X) ->
  mult(3, X).

% Finds the area
area(A, B, C) ->
  S = (A + B + C)/2,
  math:sqrt(S*(S-A)*(S-B)*(S-C)).
