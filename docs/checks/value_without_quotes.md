# Value without quotes

Detects if a value contains whitespaces and at the same time doesn't contain quote characters (`'` / `"`):

```env
❌ Wrong
FOO=BAR BAZ

✅ Correct
FOO="BAR BAR"
```
