# Quote character

Detects if a value contains quote characters (`'` / `"`) but skips if the value contains whitespaces or newline characters:

```env
❌ Wrong
FOO="BAR"

❌ Wrong
FOO='BAR'

❌ Wrong
FOO='B"AR'

✅ Correct
FOO="multi\nline"

✅ Correct
FOO=BAR

✅ Correct
FOO="BAR BAR"

✅ Correct
FOO='BAR BAR'

✅ Correct
FOO="BAR\nBAR"
```
