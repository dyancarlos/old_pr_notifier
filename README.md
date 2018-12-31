# Old PR Notifier

Notify your Slack channel about old Pull Requests that need review as soon as possible. Don't get stuck waiting for someone review your pull request after days.

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

## Tests
`mix test`
