defmodule PullRequestMock do
  def response do
    [
      %{
        days_ago: 0,
        labels: ["WIP"],
        title: "WIP: Performance tests",
        url: "https://github.com/pull/2025"
      },
      %{
        days_ago: 1,
        labels: [],
        title: "Add Signed by select field at Hosts form",
        url: "https://github.com/pull/2024"
      },
      %{
        days_ago: 1,
        labels: [],
        title: "cancel message if no email",
        url: "https://github.com/pull/2023"
      },
      %{
        days_ago: 2,
        labels: ["API"],
        title: "Serviced area",
        url: "https://github.com/pull/2021"
      },
      %{
        days_ago: 3,
        labels: [],
        title: "Update Ruby version to 2.6.0",
        url: "https://github.com/pull/2013"
      },
      %{
        days_ago: 5,
        labels: [],
        title: "adjusted check-in time for sending notifications",
        url: "https://github.com/pull/2009"
      },
      %{
        days_ago: 5,
        labels: ["API"],
        title: "Update tasks endpoint",
        url: "https://github.com/pull/2008"
      },
      %{
        days_ago: 9,
        labels: [],
        title: "Nil property issue",
        url: "https://github.com/pull/2004"
      },
      %{
        days_ago: 11,
        labels: ["API"],
        title: "Codelist endpoint",
        url: "https://github.com/pull/1991"
      },
      %{
        days_ago: 12,
        labels: ["on hold"],
        title: "Allow multiple photos for checklist steps",
        url: "https://github.com/pull/1981"
      },
      %{
        days_ago: 43,
        labels: ["WIP", "investigation"],
        title: "Check guesty booking synced",
        url: "https://github.com/pull/1864"
      },
      %{
        days_ago: 61,
        labels: ["API", "on hold"],
        title: "Add new contents to Tasks JSON overview",
        url: "https://github.com/pull/1796"
      }
    ]
  end
end
