-module(my_math).
-export([fib/1, pieces/2]).

fib(0) ->
  0;

%% @doc Finds the Nth term in the fibonacci sequence
fib(N) ->
  fib(N - 1, 0, 1).

fib(0, _Prev, Current) ->
  Current;

fib(N, Prev, Current) ->
  fib(N - 1, Current, Prev + Current).

pieces(_, 1) ->
  2; % One cut is 2 pieces

%% @doc Returns the maximum number of pieces for N cuts in a plane
pieces(two_dimension, N) ->
  N + pieces(two_dimension, N - 1);

%% @doc Returns the maximum number of pieces for N cuts in a 3D space
pieces(three_dimension, N) ->
  pieces(three_dimension, N - 1) + pieces(two_dimension, N - 1).
