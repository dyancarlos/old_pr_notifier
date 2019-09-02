defmodule Filter do
  @max_days 3

  def get do
    PullRequest.get
   |> more_than_three_days
   |> reject_specific_labels
  end

  def more_than_three_days(response) do
    Enum.filter(response, fn(pr) -> pr.days_ago >= @max_days end)
  end

  def reject_specific_labels(response) do
    response
    |> Enum.reject(fn(pr) -> "WIP" in pr.labels || "on hold" in pr.labels || "Wait for push" in pr.labels end)
  end
end
