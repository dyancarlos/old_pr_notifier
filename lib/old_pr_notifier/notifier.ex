defmodule Notifier do
  def notify do
    Filter.get
    |> Enum.map(fn pr -> message(pr) end)
    |> format_messages
    |> send_notification
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
end
