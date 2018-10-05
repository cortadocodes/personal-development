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

## Parameters/variables
* **Assignment and reference:** assign with `a=value` and refer with `$a` - if `value` is a string with spaces in it,
 it must be in single or double quotes; double quotes are required if any variables are included
* **Command substitution:** `$(command)` e.g. `$(cat hello.txt)` - run a subshell to get the output of the command and 
substitute it in
* **Referring to positional variables:** `$i` or `${j}` - either are acceptable but where `i >= 10`, variables must be
 in the latter format

Note: bash variables can nearly always be put in double quotes (`""`) with no adverse effects, and can help avoid 
catastrophic mistakes due to (perhaps unknown) spaces in variable values (such as accidentally deleting all files in 
the home directory).

## Conditionals
### `if`
```bash
if [[ conditional ]]; then
    action
elif [[ another_conditional ]]; then
    another_action
else
    something_else
fi
```

Note: conditionals terminate with exit code 0 if true.

### `case`
```bash
case expression in
    pattern1 )
        statements ;;
    pattern2 )
        statements ;;
    ...
esac
```

## Loops
### `while`
```bash
while [[ conditional ]]
do
    actions
done
```

Note: if e.g. `while true` is used, the loop will continue until `CTRL+C` is executed by the user.

## Functions
```bash
my_function() {
    echo "Get positional arguments to function by using $1, $2 etc."
}
```