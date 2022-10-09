defmodule DbConnApp.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      DbConnApp.Repo,
      # Start the Telemetry supervisor
      DbConnAppWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: DbConnApp.PubSub},
      # Start the Endpoint (http/https)
      DbConnAppWeb.Endpoint
      # Start a worker by calling: DbConnApp.Worker.start_link(arg)
      # {DbConnApp.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: DbConnApp.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    DbConnAppWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
