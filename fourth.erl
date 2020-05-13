-module(fourth).
-export([how_many_equal/3, fac/1]).

how_many_equal(A, A, A) ->
  3;

how_many_equal(A, B, C) ->
  [X, Y, Z] = lists:sort([A, B, C]),
  sorted_how_many_equal(X, Y, Z).

sorted_how_many_equal(X, X, _) ->
  2;

sorted_how_many_equal(_, X, X) ->
  2;

sorted_how_many_equal(_, _, _) ->
  0.

fac(0) ->
  1;

fac(N) ->
  N * fac(N-1).
