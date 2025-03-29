# $ZDOTDIR/.zshrc

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias diff='diff --color=auto'
alias dvim='doas vim'

alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'

alias th='trash'
alias 'doas th'='doas trash'

alias 'doas rm'='doas rm -i'
alias 'doas mv'='doas mv -i'
alias 'doas cp'='doas cp -i'

# %n = user
# %m = hostname
# %d = cwd
# %~ = cwd + tilde HOME substitution
# %T = 24h clock
# %# = prompt (% or #)
#
# %B %b = bold
# %F{#colour} %f = foreground colour
# %K{#colour} %k = background colour

PROMPT="---%F{green}%d%f:%F{blue}%B%n@%m%b%f
--%# "

# ZSH Line Editor settings
# ZLE options are underscore- and case-insensitive.
# Always move to end of word when completing
setopt always_to_end
# Complete aliases just like any other command
setopt complete_aliases
# Try to correct misspellings in commands
setopt correct
# Don't add consecutive duplicate commands to history
setopt hist_ignore_dups
# Allow comments in interactive shells
setopt interactive_comments
# Print out if a command had a non-zero exit status
setopt print_exit_value

# Load the new completion system
autoload -U compinit; compinit

# Set fully case-insensitive completion
#zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
# Set lower-to-uppercase-insensitive completion
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
# see zshcompsys(1)

# Load the TTY colourscheme if the variable is set
[ -n "$TTY_COLOURSCHEME" ] && . "$TTY_COLOURSCHEME"
