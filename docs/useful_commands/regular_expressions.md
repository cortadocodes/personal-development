# Useful regular expressions commands

| Command | Description |
| :------ | :---------- |
| `[]` | Define a character class (set of characters to match) |
| `\d` | Match any decimal digit; this is equivalent to the class `[0-9]` |
| `\D` | Match any non-digit character; this is equivalent to the class `[^0-9]` |
| `\s` | Match any whitespace character; this is equivalent to the class `[ \t\n\r\f\v]` |
| `\S` | Match any non-whitespace character; this is equivalent to the class `[^ \t\n\r\f\v]` |
| `\w` | Match any alphanumeric character; this is equivalent to the class `[a-zA-Z0-9_]` |
| `\W` | Match any non-alphanumeric character; this is equivalent to the class `[^a-zA-Z0-9_]` |
| `*` | Match the previous character 0 or more times |
| `+` | Match the previous character 1 or more times |
| `?` | Match the previous character 0 or 1 times |
| `{min, max}` | Match the previous character at least `min` times and at most `max` times |
| `r"string"` | Raw string |
