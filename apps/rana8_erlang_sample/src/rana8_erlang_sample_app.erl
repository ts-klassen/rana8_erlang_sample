%%%-------------------------------------------------------------------
%% @doc rana8_erlang_sample public API
%% @end
%%%-------------------------------------------------------------------

-module(rana8_erlang_sample_app).

-behaviour(application).

-export([start/2, stop/1]).

start(_StartType, _StartArgs) ->
    Dispatch = cowboy_router:compile([
            {'_', [
                {<<"/">>, rana8_erlang_sample_handler, []}
            ]}
    ]),
    {ok, _} = cowboy:start_clear(rana8_erlang_sample_http_listener,
        [{port, 8080}, inet, inet6],
        #{
            env => #{dispatch => Dispatch}
          , middlewares => [
                cowboy_router
              , cowboy_handler
            ]
        }
    ),
    rana8_erlang_sample_sup:start_link().

stop(_State) ->
    ok.

%% internal functions
