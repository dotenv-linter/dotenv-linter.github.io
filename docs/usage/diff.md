# 🤲 Diff

`dotenv-linter` can compare `.env` files with each other and output the difference between them with the `diff` command:

```bash
$ dotenv-linter diff .env .env.example
Comparing .env
Comparing .env.example
.env is missing keys: BAR
.env.example is missing keys: FOO
```

#### Additional arguments

In addition, the `diff` command supports the following list of arguments:
* [--quiet](/usage/check?id=quiet-mode)
* [--plain](/usage/check?id=disable-colored-output)
