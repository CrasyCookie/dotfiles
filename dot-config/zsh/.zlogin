# ~/.zlogin
printf "\n"
fastfetch
printf "\n"

if [ -f /etc/motd -a "$TERM" = "linux" ]; then cat /etc/motd ; fi
