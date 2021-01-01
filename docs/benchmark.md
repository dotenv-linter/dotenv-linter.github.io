## 🚧 Benchmark

Benchmarking [dotenv-linter/dotenv-linter](https://github.com/dotenv-linter/dotenv-linter) and [wemake-services/dotenv-linter](https://github.com/wemake-services/dotenv-linter) has done using the [hyperfine](https://github.com/sharkdp/hyperfine) utility:

| Command | Mean [ms] | Min [ms] | Max [ms] | Relative |
|:---|---:|---:|---:|---:|
| `dotenv-linter/dotenv-linter .env` | 2.7 ± 0.4 | 2.0 | 4.3 | 1.00 |
| `wemake-services/dotenv-linter .env` | 162.6 ± 12.1 | 153.0 | 201.3 | 60.83 ± 10.20 |

<details>
<summary>Content of <code>.env</code> file used for benchmarking</summary>

```dotenv
 SPACED=

KEY = VALUE

SECRET="my value"

SECRET=Already defined

kebab-case-name=1
snake_case_name=2
```

</details>
