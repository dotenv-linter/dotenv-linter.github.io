# 🚀 Usage

By default, `dotenv-linter` checks all `.env` files in the current directory:

```bash
$ dotenv-linter
Checking .env
.env:2 DuplicatedKey: The FOO key is duplicated
.env:3 UnorderedKey: The BAR key should go before the FOO key

Checking .env.test
.env.test:1 LeadingCharacter: Invalid leading character detected

Found 3 problems
```

To check another directory, just pass its path as an argument. The same approach works if you need to check any files individually:

```bash
$ dotenv-linter dir1 dir2/.my-env-file
Checking dir1/.env
dir1/.env:1 LeadingCharacter: Invalid leading character detected
dir1/.env:3 IncorrectDelimiter: The FOO-BAR key has incorrect delimiter

Checking dir2/.my-env-file
dir2/.my-env-file:1 LowercaseKey: The bar key should be in uppercase

Found 3 problems
```

If you need to exclude a file from check, you can use the argument `--exclude FILE_PATH` or its short version `-e FILE_PATH`:

```bash
$ dotenv-linter --exclude .env.test
Checking .env
.env:2 DuplicatedKey: The FOO key is duplicated
.env:3 UnorderedKey: The BAR key should go before the FOO key

Found 2 problems
```

If you need a recursive search inside directories (deeper than 1 level), you can use the flag `--recursive` or its short version `-r`:

```bash
$ dotenv-linter --recursive
Checking .env
Checking dir1/.env
dir1/.env:2 DuplicatedKey: The FOO key is duplicated

Checking dir2/subdir/.env
dir2/subdir/.env:3 IncorrectDelimiter: The FOO-BAR key has incorrect delimiter

Found 2 problems
```

If you need to skip some checks, you can use the argument `--skip CHECK_NAME` or its short version `-s CHECK_NAME`:

```bash
$ dotenv-linter --skip UnorderedKey EndingBlankLine
Checking .env
.env:2 DuplicatedKey: The FOO key is duplicated

Found 1 problem
```

You can also disable checks for a specific file or line using comments:

```env
# .env
# At the beginning - it disables checks for the whole file
# dotenv-linter:off DuplicatedKey, EndingBlankLine

# dotenv-linter:off UnorderedKey (You can disable a check for only some lines)
FOO=BAR
BAR=FOO
# dotenv-linter:on UnorderedKey (And enable it again)
```

If you want to see only warnings without additional information, use the argument `--quiet` or its short version `-q`:

```bash
$ dotenv-linter --quiet
.env:2 DuplicatedKey: The FOO key is duplicated
.env:3 UnorderedKey: The BAR key should go before the FOO key
.env.test:1 LeadingCharacter: Invalid leading character detected
```

If you need to view all available checks, you can use the argument `--show-checks`:

```bash
$ dotenv-linter --show-checks
DuplicatedKey
EndingBlankLine
ExtraBlankLine
IncorrectDelimiter
KeyWithoutValue
LeadingCharacter
LowercaseKey
QuoteCharacter
SpaceCharacter
TrailingWhitespace
UnorderedKey
```

`dotenv-linter` can also automatically fix warnings in the files. You should use the argument `--fix` (or its short version `-f`) for this:

```bash
$ dotenv-linter -f
Fixing .env
Original file was backed up to: ".env_1601378896"

.env:2 DuplicatedKey: The BAR key is duplicated
.env:3 LowercaseKey: The foo key should be in uppercase

All warnings are fixed. Total: 2
```

By default, `--fix` creates backups of files. If you want to disable the backup function, use the argument `--no-backup`:

```bash
$ dotenv-linter -f --no-backup
Fixing .env
.env:2 DuplicatedKey: The BAR key is duplicated
.env:3 LowercaseKey: The foo key should be in uppercase

All warnings are fixed. Total: 2
```

By default, the output is colored. If you want to disable colored output, you can use the argument `--no-color` :

```bash
$ dotenv-linter --no-color
.env:2 DuplicatedKey: The FOO key is duplicated
.env:3 UnorderedKey: The BAR key should go before the FOO key
.env.test:1 LeadingCharacter: Invalid leading character detected

Found 3 problems
```

Some tools use `.env` file names but content of these files is not what `dotenv-linter` expects.
Currently `dotenv-linter` doesn't check `.envrc` files because [direnv](https://direnv.net) uses them as bash scripts.
