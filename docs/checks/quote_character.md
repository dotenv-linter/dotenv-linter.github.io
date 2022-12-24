# Quote character

Detects if a value contains quote characters (`'` / `"`) but skips if the value is multi-line, contains whitespaces, newline characters or hash-signs:

```env
❌ Wrong
FOO="BAR"

❌ Wrong
FOO='BAR'

❌ Wrong
FOO='B"AR'

✅ Correct
FOO=BAR

✅ Correct
FOO="BAR BAR"

✅ Correct
FOO='BAR BAR'

✅ Correct
FOO="BAR\nBAR"

✅ Correct
MULTILINE='{
    "key": value
}'

✅ Correct
FOO='#comment'
```
