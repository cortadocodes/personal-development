# Useful bash commands
| Command | Description |
| :------ | :---------- |
| `\u` | Add the name of the current user when used in the prompt |
| `\w` | Add the full path of the current directory, starting from `~` when used in the prompt |
| `\W` | Add just the name of the current directory when used in the prompt |
| `alias` | List bash aliases in current session |
| `zip -r archive_name.zip folder_to_compress` | Zip `folder_to_compress` into `archive_name.zip` |
| `unzip archive_name.zip` | Unzip zipped archive `archive_name.zip` |
| `array=( item1 item2 item3 )` | Create an array |
| `"${array[@]}"` | Expand items in an array |
| `lsof -i :port` | Display process on `port` |
| `kill -9 PID` | Kill process `PID` |
| `$OSTYPE` | OS type | 
| `$USERNAME` | Logged-in username |
| `$HOME` | Home directory path |
| `$BASH_VERSION` | Shell version |
| `[[ -d directory ]]` | Test a directory exists |
| `[[ -f file ]]` | Test a file exists |
| `[[ -e file_or_directory ]]` | Test for existence of file or directory |
| `fc` | Open the previous command in the default terminal editor, then run it on save and close |
| `<space> <command>` | Don't store command in history |

Colours in bash: [guide](https://gist.github.com/vratiu/9780109)

## Redirection

| Command | Description |
| :------ | :---------- |
| `command>file` | Redirect output of `command` to `file`, overwriting it if it already exists |
| `command>>file` | Redirect and append output of `command` to `file` |
| `file<command` | Redirect contents of `file` into `stdin` of `command` |

## File descriptors (FD)
* 0 - `stdin`
* 1 - `stdout`
* 2 - `stderr`

| Command | Description |
| :------ | :---------- |
| `&>file` | Redirect both standard output and standard error to `file` |
| `i>/dev/null` | Redirect FD `i` to `null` device |
| `i>&j` | Redirect FD `i`'s stream to FD `j`'s current stream |
| `i<&-` | Close input FD `i` |
| `i>&-` | Close output FD `i` |

## Exit codes
Use `$?` to get the exit code of last process.

* `1` - Catchall for general errors
* `2` - Misuse of shell builtins (according to Bash documentation)
* `126` - Command invoked cannot execute
* `127` - “command not found”
* `128` - Invalid argument to `exit`
* `128+n` - Fatal error signal “n”
* `130` - Script terminated by Control-C
* `255\*` - Exit status out of range

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

| Command | Description |
| :------ | :---------- |
| `${#variable}` | Get the length of `variable` |
| `$#` | Return number of positional arguments |
| `$*` | Return all positional arguments |

## Truth values
| Expression/type | Truth evaluation | Detail |
| :-------------- | :--------------- | :----- |
| `true` | `True` | Truth command |
| `false` | `False` | Falseness command |
| Empty string | `False` |
| Non-empty string | `True` |
| Positive or negative number, including 0 | `True` |
| Uninitialised variable | `False` |
| `"true"` | `True` | Just a string |
| `"false"` | `True` | Just a string |
| `$true` | `False` | Uninitialised variable |
| `$false` | `False` | Uninitialised variable |

## Comparisons
If `[[ ]]` are used for comparing rather than `[ ]`, all the following comparisons can be used:

| Comparator | Intuitive notation | Less intuitive notation | Operand type |
| :--------- | ------------------ | ------------------------| :----------- |
| Less than | `<` | `-lt` (numeric only) | String, numeric |
| Less than or equal |  | `-le` (numeric only) | Numeric |
| Greater than | `>` | `-gt` (numeric only) | String, numeric |
| Greater than or equal |  | `-ge` (numeric only)| Numeric |
| Equal | `==` | `-eq` (numeric only) | String, numeric |
| Not equal | `!=` | `-ne` (numeric only) | String, numeric |
| Null |  | `-z` | String, numeric |
| Not null |  | `-n` | String, numeric |

## Conditionals
### `if`
```bash
if [[ condition ]]; then
    action
elif [[ another_condition ]]; then
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
### `for`
Example 1
```bash
for i in 1 2 3 4
    do
        actions
    done
```

Example 2
```bash
for i in {start..stop}
    do
        actions
    done    
```

Example 3
```bash
for ((i=start; i<=stop; i++))
    do
        actions
    done
```
    
### `while`
```bash
while [[ condition ]]
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
Function return values can be accessed and assigned to a variable via command substitution:
```bash
output=$( my_function arg1 arg2 ... )
```

## HereDocs
```bash
command << delimiter
line1
line2
line3
delimiter
```

Ignore tabs by using `-`, e.g.:
```bash
cat <<- EOF
    line1
    line2
    line3
EOF
```

Send to a file:
```bash
cat > myfile <<- xxx
    Content
    More content
xxx
```
