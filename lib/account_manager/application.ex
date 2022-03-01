defmodule AccountManager.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      AccountManager.Repo,
      # Start the Telemetry supervisor
      AccountManagerWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: AccountManager.PubSub},
      # Start the Endpoint (http/https)
      AccountManagerWeb.Endpoint
      # Start a worker by calling: AccountManager.Worker.start_link(arg)
      # {AccountManager.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: AccountManager.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    AccountManagerWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
