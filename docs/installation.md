# 👨‍💻 Installation

There are several ways to install `dotenv-linter`. Choose a more convenient option for you.

#### Pre-compiled binary

```bash
# Linux / macOS / Windows (MINGW and etc). Installs it into ./bin/ by default
$ curl -sSfL https://raw.githubusercontent.com/dotenv-linter/dotenv-linter/master/install.sh | sh -s

# Or more shorter way
$ curl -sSfL https://git.io/JLbXn | sh -s

# Specify installation directory and version
$ curl -sSfL https://git.io/JLbXn | sh -s -- -b usr/local/bin v2.0.0

# Alpine Linux (wget)
$ wget -q -O - https://git.io/JLbXn | sh -s
```

#### Homebrew / Linuxbrew

```bash
# Installs the latest stable release
$ brew install dotenv-linter

# Builds the latest version from the repository
$ brew install --HEAD dotenv-linter
```

#### Arch Linux / AUR

```bash
# Use your favourite AUR-helper, e.g. trizen

# Installs the latest stable release
$ trizen -S dotenv-linter-bin

# Builds the latest version from the repository
$ trizen -S dotenv-linter-git
```

#### Windows / Scoop

```bash
$ scoop bucket add dotenv-linter https://github.com/dotenv-linter/scoop.git
$ scoop install dotenv-linter/dotenv-linter
````

#### Docker

```bash
$ docker run --rm -v `pwd`:/app -w /app dotenvlinter/dotenv-linter
```

#### Cargo

If you are a **Rust** programmer, you can install `dotenv-linter` via `cargo`:

```bash
$ cargo install dotenv-linter
```
