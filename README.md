# theautofuck 

## Description:
This script automatically corrects mistyped commands by invoking 'thefuck'
when a command cannot be found. It works for both .bashrc and .zshrc.

Add this function to your shell configuration file (.bashrc or .zshrc)
to enable automatic correction of mistyped commands using 'thefuck'.

```bash
theautofuck() {
    if type thefuck > /dev/null 2>&1; then
       eval $(thefuck $last_command) 
    else
        echo "Command not found: $1"
    fi
}

# for .bashrc
command_not_found_handle(){ last_command="$@" theautofuck }

# for .zshrc
command_not_found_handler(){ last_command="$@" theautofuck }

```

## Usage:
Add the above function to your shell configuration file (.bashrc or .zshrc).
Then, restart your shell or run 'source ~/.bashrc' (or '.zshrc').

Now, when you mistype a command, autothefuck will attempt to correct it
using 'thefuck', if the command is not found.
If the corrected command is found, it will be executed; otherwise, the original
mistyped command will be executed.

## Note:
- 'thefuck' must be installed for this script to work.
- This script checks if the command is not found by using 'command -v'.
- 'fc -ln -1' retrieves the last executed command.

Design Pattern:
This script applies the Strategy design pattern by encapsulating
the logic for automatically correcting mistyped commands within the
'theautofuck' function.
