# ✅ Check

`dotenv-linter` can check all `.env` files in a directory:

```bash
$ dotenv-linter check .
Checking .env
.env:2 DuplicatedKey: The FOO key is duplicated
.env:3 UnorderedKey: The BAR key should go before the FOO key

Checking .env.test
.env.test:1 LeadingCharacter: Invalid leading character detected

Found 3 problems
```

To check another directory, just pass its path as an argument. The same approach works if you need to check any files individually:

```bash
$ dotenv-linter check dir1 dir2/.my-env-file
Checking dir1/.env
dir1/.env:1 LeadingCharacter: Invalid leading character detected
dir1/.env:3 IncorrectDelimiter: The FOO-BAR key has incorrect delimiter

Checking dir2/.my-env-file
dir2/.my-env-file:1 LowercaseKey: The bar key should be in uppercase

Found 3 problems
```

#### Exclude files

If you need to exclude a file from check, you can use the `--exclude FILE_PATH` argument (or its short version `-e`):

```bash
$ dotenv-linter check --exclude .env.test .
Checking .env
.env:2 DuplicatedKey: The FOO key is duplicated
.env:3 UnorderedKey: The BAR key should go before the FOO key

Found 2 problems
```

#### Recursive check

If you need a recursive search inside directories (deeper than 1 level), you can use the `--recursive` argument (or its short version `-r`):

```bash
$ dotenv-linter check --recursive .
Checking .env
Checking dir1/.env
dir1/.env:2 DuplicatedKey: The FOO key is duplicated

Checking dir2/subdir/.env
dir2/subdir/.env:3 IncorrectDelimiter: The FOO-BAR key has incorrect delimiter

Found 2 problems
```

#### Ignore checks

If you need to ignore some checks, you can use the `--ignore-checks CHECK_NAME` argument (or its short version `-i`):

```bash
$ dotenv-linter check --ignore-checks UnorderedKey,EndingBlankLine .
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

#### Quiet mode

If you want to see only warnings without additional information, use the `--quiet` argument (or its short version `-q`):

```bash
$ dotenv-linter check --quiet .
.env:2 DuplicatedKey: The FOO key is duplicated
.env:3 UnorderedKey: The BAR key should go before the FOO key
.env.test:1 LeadingCharacter: Invalid leading character detected
```

#### Disable colored output

By default, the output is colored. If you want to disable colored output, you can use the `--plain` argument:

```bash
$ dotenv-linter check --plain .
.env:2 DuplicatedKey: The FOO key is duplicated
.env:3 UnorderedKey: The BAR key should go before the FOO key
.env.test:1 LeadingCharacter: Invalid leading character detected

Found 3 problems
```

#### Check for updates

By default, `dotenv-linter` checks for a new version once a day.
If the new version is available, it will display information about it:

```bash
$ dotenv-linter check .
.env:2 DuplicatedKey: The FOO key is duplicated
.env:3 UnorderedKey: The BAR key should go before the FOO key
.env.test:1 LeadingCharacter: Invalid leading character detected

Found 3 problems

A new release of dotenv-linter is available: v3.1.0 -> v3.1.1
https://github.com/dotenv-linter/dotenv-linter/releases/tag/v3.1.1
```

If you want to disable checking for updates, you can use the `--skip-updates` argument.

#### Export prefix

It is possible to use `export` prefix for defined variables. For example, `export FOO=BAR` will be checked without warnings.

#### Exceptions

Some tools use `.env` file names but content of these files is not what `dotenv-linter` expects.<br/>
Currently `dotenv-linter` doesn't check `.envrc` files because [direnv](https://direnv.net) uses them as bash scripts.

#### Environment variables

Some settings can be controlled via environment variables.

* `DOTENV_LINTER_IGNORE_CHECKS` - disables checks (multiple checks are specified separated by commas):
```bash
$ DOTENV_LINTER_IGNORE_CHECKS=QuoteCharacter dotenv-linter check .
```

* `DOTENV_LINTER_SKIP_UPDATES` - disables checking for updates:
```bash
$ DOTENV_LINTER_SKIP_UPDATES=true dotenv-linter check .
```
