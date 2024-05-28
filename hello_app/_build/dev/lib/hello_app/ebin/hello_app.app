{application,hello_app,
             [{compile_env,[{hello_app,['Elixir.HelloAppWeb.Gettext'],error}]},
              {optional_applications,[]},
              {applications,[kernel,stdlib,elixir,logger,runtime_tools,
                             phoenix,phoenix_view,phoenix_ecto,ecto_sql,
                             postgrex,phoenix_html,phoenix_live_reload,
                             phoenix_live_view,phoenix_live_dashboard,esbuild,
                             swoosh,telemetry_metrics,telemetry_poller,
                             gettext,jason,plug_cowboy,tailwind,
                             petal_components,hackney]},
              {description,"hello_app"},
              {modules,['Elixir.HelloApp','Elixir.HelloApp.Application',
                        'Elixir.HelloApp.Repo','Elixir.HelloAppWeb',
                        'Elixir.HelloAppWeb.Endpoint',
                        'Elixir.HelloAppWeb.ErrorHelpers',
                        'Elixir.HelloAppWeb.ErrorView',
                        'Elixir.HelloAppWeb.Gettext',
                        'Elixir.HelloAppWeb.LayoutView',
                        'Elixir.HelloAppWeb.PageController',
                        'Elixir.HelloAppWeb.PageView',
                        'Elixir.HelloAppWeb.Router',
                        'Elixir.HelloAppWeb.Router.Helpers',
                        'Elixir.HelloAppWeb.Telemetry',
                        'Elixir.HelloAppWeb.UserSocket']},
              {registered,[]},
              {vsn,"0.1.0"},
              {mod,{'Elixir.HelloApp.Application',[]}}]}.