# Schema violation

`dotenv-linter` can check `.env` files for schema compliance.
A schema is simply a `JSON` file that describes the names of keys and the format of their values.
If a key value is of a different type, `dotenv-linter` will display a warning.

Example of the contents of a schema file (the schema file name can be anything):
```json
// .schema.env.json
{
  "version": "1.0",
  "entries": {
    "NAME": {
      "type": "String",
      "regex": "^DOT*"
    },
    "PORT": {
      "type": "Integer"
    },
    "PRICE": {
      "type": "Float"
    },
    "URL": {
      "type": "Url"
    },
    "EMAIL": {
      "type": "Email"
    },
    "FLAG": {
      "type": "Boolean"
    }
  }
}
```

To run `dotenv-linter` using a schema, there is a special argument `--schema` (or its short version `-s`):

```bash
$ dotenv-linter check --schema .schema.env.json .
Checking .env
.env:1 SchemaViolation: The EMAIL key is not a valid email address
.env:2 SchemaViolation: The FLAG key is not a valid boolean
.env:3 SchemaViolation: The NAME key does not match the regex
.env:4 SchemaViolation: The PORT key is not an integer
.env:5 SchemaViolation: The PRICE key is not a valid float
.env:6 SchemaViolation: The URL key is not a valid URL

Found 6 problems
```
