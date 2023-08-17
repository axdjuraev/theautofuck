theautofuck() {
    if type thefuck > /dev/null 2>&1; then
        eval $(thefuck $(fc -ln -1))
    else
        echo "Command not found: $1"
    fi
}
