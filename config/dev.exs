use Mix.Config

config :old_pr_notifier, :environment, :dev

config :old_pr_notifier, OldPRNotifier.Scheduler, jobs: [
  {"* * * * *", {Notifier, :notify, []}}
]
