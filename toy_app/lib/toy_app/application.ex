defmodule ToyApp.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      ToyApp.Repo,
      # Start the Telemetry supervisor
      ToyAppWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: ToyApp.PubSub},
      # Start the Endpoint (http/https)
      ToyAppWeb.Endpoint
      # Start a worker by calling: ToyApp.Worker.start_link(arg)
      # {ToyApp.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: ToyApp.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    ToyAppWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
