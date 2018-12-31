defmodule FilterTest do
  use ExUnit.Case, async: false

  import Mock

  test "return correct quantity of pull requests" do
    with_mock PullRequest, [get: fn -> PullRequestMock.response end] do
      assert Enum.count(Filter.get) == 5
    end
  end

  test "return correct values" do
    with_mock PullRequest, [get: fn -> PullRequestMock.response end] do
      assert Filter.get == [
        %{days_ago: 3, labels: [], title: "Update Ruby version to 2.6.0", url: "https://github.com/pull/2013"},
        %{days_ago: 5, labels: [], title: "adjusted check-in time for sending notifications", url: "https://github.com/pull/2009"},
        %{days_ago: 5, labels: ["API"], title: "Update tasks endpoint", url: "https://github.com/pull/2008"},
        %{days_ago: 9, labels: [], title: "Nil property issue", url: "https://github.com/pull/2004"},
        %{days_ago: 11, labels: ["API"], title: "Codelist endpoint", url: "https://github.com/pull/1991"}
      ]
    end
  end

  test "min days ago greater or equal 3" do
    with_mock PullRequest, [get: fn -> PullRequestMock.response end] do
      assert Enum.min(Filter.get, fn(x) -> x.days_ago end).days_ago == 3
    end
  end
end
