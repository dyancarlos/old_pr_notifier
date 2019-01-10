defmodule PullRequest do
  import GitHubApi

  def get do
    requests()
    |> List.flatten
  end

  def requests do
    Enum.map(url(), fn endpoint ->
      HTTPoison.get(endpoint, header())
      |> PullRequestFormater.format
    end)
  end
end
