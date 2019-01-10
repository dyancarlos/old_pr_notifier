defmodule GitHubApi do
  def url do
    System.get_env("GH_URL")
    |> String.split(",")
  end

  def header do
    ["Authorization": "Bearer " <> System.get_env("GH_TOKEN")]
  end
end
