use Mix.Config

config :old_pr_notifier, :environment, :prod

config :old_pr_notifier, OldPRNotifier.Scheduler, jobs: [
  {"0 8 * * *", {Notifier, :notify, []}}
]
