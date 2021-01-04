# Mega-Linter

Instead of installing and configuring all linters in your project CI workflows, you can use [Mega-Linter](https://nvuillam.github.io/mega-linter) which does all that for you with a single [assisted installation](https://nvuillam.github.io/mega-linter/installation).

Mega-Linter embeds `dotenv-linter` by default in all its [flavors](https://nvuillam.github.io/mega-linter/flavors), meaning that it will be run at each commit or Pull Request to detect and report `.env` issues.

Below is a simple snippet of a `.mega-linter.yml` configuration file if you want Mega-Linter to only run `dotenv-linter` and apply auto-fixes:

```yaml
# Configuration file for Mega-Linter
# See all available variables at https://nvuillam.github.io/mega-linter/configuration and in linters documentation

APPLY_FIXES: all # Apply fixes in a new commit. Remove line if not wanted
ENABLE:
- ENV
SHOW_ELAPSED_TIME: true
```

`dotenv-linter` page in Mega-Linter documentation is available [here](https://nvuillam.github.io/mega-linter/descriptors/env_dotenv_linter).
