-module(second).
-export([hypotenuse/2, perimeter/2]).

%% @doc Finds the hypotenuse of a right angled triangle given 2 sides
hypotenuse(A, B) ->
  X = first:square(A) + first:square(B),
  math:sqrt(X).

%% @doc Finds the perimeter of a right angled triangle given 2 short sides
perimeter(A, B) ->
  X = hypotenuse(A, B),
  A + B + X.
