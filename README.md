[![Build Status](https://travis-ci.org/dyancarlos/old_pr_notifier.svg?branch=master)](https://travis-ci.org/dyancarlos/old_pr_notifier)

# Old PR Notifier

Notify your Slack channel about old Pull Requests that need review as soon as possible. Don't get stuck waiting for someone review your pull request after days.

![old pull request notifier screenshot](https://res.cloudinary.com/guestready/image/upload/v1546259981/samples/image.png)

**OBS:** Still working in progress

## Setup
**Add needed ENV vars:**

GitHub pull requests API url:
```
GH_URL="https://api.github.com/repos/USER/REPO_NAME/pulls"
```
GitHub API Token:
```
GH_TOKEN=""
```
Slack API hook url:
```
SLACK_HOOK=""
```

## Run
`$ iex -S mix'
`iex(1)> Notifier.notify`

## Tests
`mix test`
