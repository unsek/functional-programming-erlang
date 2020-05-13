-module(my_math).
-export([fib/1]).

fib(0) ->
  0;

%% @doc Finds the Nth term in the fibonacci sequence
fib(N) ->
  fib(N-1, 0, 1).

fib(0, _Prev, Current) ->
  Current;

fib(N, Prev, Current) ->
  fib(N-1, Current, Prev + Current).
