# $ZDOTDIR/.zshrc

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias diff='diff --color=auto'

alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'

alias cal="cal -y -c 4"
alias mpv="mpv --save-position-on-quit"
alias whatsmyip="stunclient stunserver2025.stunprotocol.org"
alias e="emacsclient"

# zsh.sourceforge.io/Doc/Release/Prompt-Expansion.html

# Load vcs_info and the new completion system
autoload -Uz compinit vcs_info add-zsh-hook

# Use a red prompt for the superuser
if [ "$(id -u)" -eq 0 ]; then
    PROMPT_USER_COLOUR="red"
    PROMPT_CHAR='#'
else
    PROMPT_USER_COLOUR="green"
    PROMPT_CHAR='$'
fi

# Add distribution information in prompt
export DISTRO_NAME="$( (. /etc/os-release && printf "${NAME}") || printf "unknown")"
export DISTRO_ID="$( (. /etc/os-release && printf "${ID}") || printf "unknown")"

zstyle ':vcs_info:*' enable git cvs svn
zstyle ':vcs_info:*' actionformats '(%s)-[%b|%a] '
zstyle ':vcs_info:*' formats '%s@%b '
zstyle ':vcs_info:(svn|bzr):*' branchformat '%b:%r'
add-zsh-hook precmd vcs_info

# git/vcs (conditional) | user@hostname | exit-status (conditional) | cwd (tilde-substituted)
PROMPT='[ %F{cyan}${vcs_info_msg_0_}%F{$PROMPT_USER_COLOUR}%n@%m %F{magenta}(${DISTRO_NAME}) %F{red}${${?/0/}:+$? }%F{blue}%~ %f]
${PROMPT_CHAR} '

# ZSH Line Editor settings
# ZLE options are underscore- and case-insensitive.
# Always move to end of word when completing
setopt always_to_end
# Complete aliases just like any other command
setopt complete_aliases
# Try to correct misspellings in commands
setopt correct
# Allow comments in interactive shells
setopt interactive_comments
# Don't add consecutive duplicate commands to history
setopt hist_ignore_dups
# Share history between sessions
#setopt share_history
# Allow variable substitution in the prompt
setopt prompt_subst

compinit
# Set fully case-insensitive completion
#zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
# Set lower-to-uppercase-insensitive completion
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
# see zshcompsys(1)

# Load the zsh-vi-mode plugin.
#source "$ZDOTDIR/zsh-vi-mode/zsh-vi-mode.zsh"

# Load the TTY colourscheme if the variable is set
[ -n "$TTY_COLOURSCHEME" ] && source "$TTY_COLOURSCHEME"
