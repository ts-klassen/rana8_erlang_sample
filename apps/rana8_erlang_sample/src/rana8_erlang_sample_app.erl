%%%-------------------------------------------------------------------
%% @doc rana8_erlang_sample public API
%% @end
%%%-------------------------------------------------------------------

-module(rana8_erlang_sample_app).

-behaviour(application).

-export([start/2, stop/1]).

start(_StartType, _StartArgs) ->
    rana8_erlang_sample_sup:start_link().

stop(_State) ->
    ok.

%% internal functions
