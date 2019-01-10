defmodule PullRequestFormater do
  def format(response) do
    response
    |> parser_response
    |> data
  end

  def parser_response({:ok, %HTTPoison.Response{body: body, status_code: 200}}) do
    body
    |> JSON.decode!
  end

  def data(json) do
    Enum.map(json, fn pr ->
      try do
        %{url: pr["html_url"],
          title: pr["title"],
          days_ago: days_ago(pr["created_at"]),
          labels: labels(pr["labels"]) }
      rescue
        _ -> :error
      end
    end)
  end

  defp labels(labels) do
    labels
    |> Enum.map(fn label -> label["name"] end)
  end

  defp days_ago(created_at) do
    {:ok, datetime, 0} = DateTime.from_iso8601(created_at)
    Timex.diff(Timex.now, datetime, :days)
  end
end
