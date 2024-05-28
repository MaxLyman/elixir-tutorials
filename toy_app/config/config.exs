# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :toy_app,
  ecto_repos: [ToyApp.Repo]

# Configures the endpoint
config :toy_app, ToyAppWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "DX5OUDky9YVVjuF7KcwAHifd3OQmFaQU5redovbzzBYAJJAU7dptLJ+SWYULW1yW",
  render_errors: [view: ToyAppWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: ToyApp.PubSub,
  live_view: [signing_salt: "oJ710qgt"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
