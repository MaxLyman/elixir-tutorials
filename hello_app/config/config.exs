# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :hello_app,
  ecto_repos: [HelloApp.Repo]

# Configures the endpoint
config :hello_app, HelloAppWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "btSVuvNlt8k65C59IVkTLFWp8vTr8T5BeYawBYPKx9dsIevQevC55WdUz7AsMWho",
  render_errors: [view: HelloAppWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: HelloApp.PubSub,
  live_view: [signing_salt: "OEvmeuRe"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
