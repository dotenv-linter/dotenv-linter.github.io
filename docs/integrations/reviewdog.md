# Reviewdog

You can integrate `dotenv-linter` with [reviewdog](https://github.com/reviewdog/reviewdog) to post linter warnings as a comment on GitHub, GitLab or Bitbucket.

```bash
$ dotenv-linter | reviewdog -f=dotenv-linter -diff="git diff master"
```

More information you can find here: https://github.com/reviewdog/reviewdog#reporters
