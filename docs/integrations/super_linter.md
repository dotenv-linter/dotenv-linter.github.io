# Super-Linter

[Super-Linter](https://github.com/github/super-linter) is a simple combination of various linters, written in `bash`, to help validate your source code.

This tool is written by [GitHub](https://github.blog/2020-06-18-introducing-github-super-linter-one-linter-to-rule-them-all) and includes `dotenv-linter` by default.

Below is a simple snippet to use `Super-Linter` in your workflow:

```yaml
# .github/workflows/super_linter.yml
name: Super-Linter
on: [pull_request]

jobs:
  build:
    name: Lint Code Base
    runs-on: ubuntu-latest
    steps:
      - name: Checkout Code
        uses: actions/checkout@v2
        with:
          # Full git history is needed to get a proper list of changed files within `super-linter`
          fetch-depth: 0
      - name: Lint Code Base
        uses: github/super-linter@v3
        env:
          VALIDATE_ALL_CODEBASE: false
          DEFAULT_BRANCH: master
          GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
```
