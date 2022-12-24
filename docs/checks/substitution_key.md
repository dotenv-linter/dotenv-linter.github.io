# Substitution key

Detects if a substitution is not properly performed on key assignment:

```env
❌ Wrong
ABC=${BAR
FOO="$BAR}"

✅ Correct
ABC=${BAR}
FOO="$BAR"
```
