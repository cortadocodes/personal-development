# Useful bash commands
| Command | Description |
| :------ | :---------- |
| `\u` | Add the name of the current user when used in the prompt |
| `\w` | Add the full path of the current directory, starting from `~` when used in the prompt |
| `\W` | Add just the name of the current directory when used in the prompt |
| `variable="$(command)"` | Store the output of a bash command `command` in the variable `$variable`
| `${#variable}` | Get the length of `variable` |
| `alias` | List bash aliases in current session |
| `zip -r archive_name.zip folder_to_compress` | Zip `folder_to_compress` into `archive_name.zip` |
| `unzip archive_name.zip` | Unzip zipped archive `archive_name.zip` |
| `i>/dev/null` | Redirect file descriptor (FD) `i` to `null` device |
| `i>&j` | Redirect FD `i`'s stream to FD `j`'s current stream |
| `&>file` | Redirect standard output and standard error to `file` |
| `array=( item1 item2 item3 )` | Create an array |
| `"${array[@]}"` | Expand items in an array |
| `lsof -i :port` | Display process on `port` |
| `kill -9 PID` | Kill process `PID` |

Colours in bash: [guide](https://gist.github.com/vratiu/9780109)

## File descriptors
* 0 - `stdin`
* 1 - `stdout`
* 2 - `stderr`
