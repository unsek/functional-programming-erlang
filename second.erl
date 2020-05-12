-module(second).
-import('first', [square/1]).
-export([hypotenuse/2, perimeter/2]).

% Finds the hypotenuse of a right angled triangle given 2 sides
hypotenuse(A, B) ->
  X = square(A) + square(B),
  math:sqrt(X).

% Finds the perimeter of a right angled triangle given 2 short sides
perimeter(A, B) ->
  X = hypotenuse(A, B),
  A + B + X.
