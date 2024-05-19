defmodule TamnoonSample.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      {Tamnoon, [[initial_state: %{val: 0}, router: TamnoonSample.Router, methods_module: TamnoonSample.Methods]]}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: TamnoonSample.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
