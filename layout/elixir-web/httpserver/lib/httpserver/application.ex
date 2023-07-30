defmodule Httpserver.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application
  require Logger

  @impl true
  def start(_type, _args) do
    children = [
      {Plug.Cowboy, scheme: :http, plug: Httpserver.HelloWorldPlug, options: [port: 8080]}
      # Starts a worker by calling: Httpserver.Worker.start_link(arg)
      # {Httpserver.Worker, arg}
    ]

    opts = [strategy: :one_for_one, name: Httpserver.Supervisor]

    Logger.info("Starting application...")

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    # opts = [strategy: :one_for_one, name: Httpserver.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
