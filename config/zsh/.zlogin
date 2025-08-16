# ~/.zlogin
if command -v fastfetch 2>&1 >/dev/null; then
    printf "\n"
    fastfetch
    printf "\n"
fi

if [ -f /etc/motd -a "$TERM" = "linux" ]; then
    cat /etc/motd
fi
