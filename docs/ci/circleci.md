# CircleCI

Here is an example of how you can run `dotenv-linter` on [CircleCI](https://circleci.com):

```yaml
# .circleci/config.yml
version: 2.1
jobs:
  dotenv-linter:
    # ...
    steps:
      - checkout
      - run:
          name: Run dotenv-linter
          command: |
            wget -q -O - https://raw.githubusercontent.com/dotenv-linter/dotenv-linter/master/install.sh | sh -s
            ./bin/dotenv-linter
```
