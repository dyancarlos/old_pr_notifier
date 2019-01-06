defmodule OldPRNotifier.Application do
  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    children = [
      worker(OldPRNotifier.Scheduler, [])
    ]

    opts = [strategy: :one_for_one, name: OldPRNotifier.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
