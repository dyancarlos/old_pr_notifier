defmodule App.MixProject do
  use Mix.Project

  def project do
    [
      app: :old_pr_notifier,
      version: "0.1.0",
      elixir: "~> 1.7",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      mod: {OldPRNotifier.Application, []},
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:httpoison, "~> 1.4"},
      {:json, "~> 1.2"},
      {:timex, "~> 3.0"},
      {:quantum, "~> 2.3"},
      {:mock, "~> 0.3.0", only: :test}
    ]
  end
end
