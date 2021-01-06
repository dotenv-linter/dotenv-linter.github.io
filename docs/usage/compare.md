# 🤲 Compare

`dotenv-linter` can compare `.env` files with each other and output the difference between them with the `compare` command (or its short version `c`):

```bash
$ dotenv-linter compare .env .env.example
Comparing .env
Comparing .env.example
.env is missing keys: BAR
.env.example is missing keys: FOO
```

#### Addition arguments

In addition, the `compare` command supports the following list of arguments:
* [--quiet](/usage/check?id=quiet-mode)
* [--no-color](/usage/check?id=disable-colored-output)
