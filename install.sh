#!/bin/bash

current_shell=$(basename "$SHELL")

bash_command="command_not_found_handle(){ theautofuck() }"
zsh_command="command_not_found_handler(){ theautofuck() }"

# TODO: get config location from parameter
if [ "$current_shell" = "bash" ]; then
    echo "$bash_command" >> ~/.bashrc
    echo "Appended to .bashrc"
elif [ "$current_shell" = "zsh" ]; then
    echo "$zsh_command" >> ~/.zshrc
    echo "Appended to .zshrc"
else
    echo "Unsupported shell: $current_shell"
fi
