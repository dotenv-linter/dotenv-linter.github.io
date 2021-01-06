# 🛠 Fix

`dotenv-linter` can also fix the found warnings with the `fix` command (or its short version `f`):

```bash
$ dotenv-linter fix
Fixing .env
Original file was backed up to: ".env_1601378896"

.env:2 DuplicatedKey: The BAR key is duplicated
.env:3 LowercaseKey: The foo key should be in uppercase

All warnings are fixed. Total: 2
```

#### Disable backup

By default, `fix` creates backups of files. If you want to disable the backup function, use the argument `--no-backup`:

```bash
$ dotenv-linter fix --no-backup
Fixing .env
.env:2 DuplicatedKey: The BAR key is duplicated
.env:3 LowercaseKey: The foo key should be in uppercase

All warnings are fixed. Total: 2
```

#### Addition arguments

In addition, the `fix` command supports the following list of arguments:
* [--exclude](/usage/check?id=exclude-files)
* [--recursive](/usage/check?id=recursive-check)
* [--skip](/usage/check?id=skip-checks)
* [--quiet](/usage/check?id=quiet-mode)
* [--no-color](/usage/check?id=disable-colored-output)
