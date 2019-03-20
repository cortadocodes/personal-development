# Useful regular expressions commands

## Regex syntax
| Command | Description |
| :------ | :---------- |
| `[]` | Define a character class (set of characters to match) |
| `\d` | Match any decimal digit; this is equivalent to the class `[0-9]` |
| `\D` | Match any non-digit character; this is equivalent to the class `[^0-9]` |
| `\w` | Match any alphanumeric character; this is equivalent to the class `[a-zA-Z0-9_]` |
| `\W` | Match any non-alphanumeric character; this is equivalent to the class `[^a-zA-Z0-9_]` |
| `\s` | Match any whitespace character; this is equivalent to the class `[ \t\n\r\f\v]` |
| `\S` | Match any non-whitespace character; this is equivalent to the class `[^ \t\n\r\f\v]` |
| `\b` | Match a word to non-word boundary |
| `\.` | Match a period |
| `*` | Match the previous character 0 or more times |
| `+` | Match the previous character 1 or more times |
| `?` | Match the previous character 0 or 1 times |
| `{min, max}` | Match the previous character at least `min` times and at most `max` times |
| `^` | Negate a character class i.e. a set of characters not to match (must appear inside []) |
| `^` | Match the start of a line |
| `$` | Match the end of a line |
| `()` | Define a capture group |

## Python implementation
| Command | Description |
| :------ | :---------- |
| `r"string"` | Raw python string |
