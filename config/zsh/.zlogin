# ~/.zlogin
if command -v fastfetch >/dev/null 2>&1; then
    printf "\n"
    fastfetch
    printf "\n"
fi

if [ -f /etc/motd ] && [ "$TERM" = "linux" ]; then
    cat /etc/motd
fi
