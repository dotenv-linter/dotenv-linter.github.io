# Extra Blank Line

Detects if a file contains more than one blank line in a row:

```env
❌ Wrong
A=B
<Blank line>
<Blank line>
FOO=BAR

❌ Wrong
A=B
FOO=BAR
<Blank line>
<Blank line>

✅ Correct
A=B
<Blank line>
FOO=BAR
<Blank line>

✅ Correct
A=B
FOO=BAR
<Blank line>
```
