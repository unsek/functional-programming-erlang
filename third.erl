-module(third).
-export([max_three/3, how_many_equal/3]).

%% @doc Returns the maximum number amongst the three arguments
max_three(A, A, A) ->
  A;

max_three(A, B, C) ->
  max(A, max(B, C)).

%% @doc Counts how many equal entries there are
how_many_equal(A, A, A) ->
  3;

how_many_equal(Current, [H|T], Matches) ->
  % Increments matches if current element
  % is equal with head of list
  New = if
    Current == H ->
      Matches + 2;
    true ->
      Matches
  end,

  how_many_equal(H, T, New);

how_many_equal(_, [], Matches) ->
  Matches;

how_many_equal(A, B, C) ->
  Nums = lists:sort([B, C]),
  how_many_equal(A, Nums, 0).
