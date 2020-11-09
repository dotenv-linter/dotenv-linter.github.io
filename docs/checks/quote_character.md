# Quote character

Detects if a value contains quote characters (`'` / `"`), skips when there is a multiline value:

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
```
