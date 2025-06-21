# ~/.zlogin
if command -v fastfetch; then
    printf "\n"
    fastfetch
    printf "\n"
fi

if [ -f /etc/motd -a "$TERM" = "linux" ]; then
    cat /etc/motd
fi
