defmodule Notifier do
  @saturday 6
  @sunday 7

  def notify do
    unless day_of_week == @saturday or day_of_week == @sunday do
      Filter.get
      |> Enum.map(fn pr -> message(pr) end)
      |> format_messages
      |> send_notification
    end
  end

  defp send_notification(messages) do
    HTTPoison.post(System.get_env("SLACK_HOOK"), "{\"text\": \"#{messages}\"}", [{"Content-Type", "application/json"}])
  end

  defp format_messages(messages) do
    messages
    |> Enum.join("\n")
  end

  defp message(pr) do
    "The PR *#{pr.title}* (#{pr.url}) is waiting for review for the last *#{pr.days_ago}* days"
  end

  defp day_of_week do
    DateTime.utc_now() |> Date.day_of_week()
  end
end
