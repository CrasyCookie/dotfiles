# ~/.zshenv

if [ -z "$SOLARIZED" ]; then
    export SOLARIZED="light"
fi

# XDG directories
export XDG_CONFIG_HOME="$HOME/.config/"
export XDG_DATA_HOME="$HOME/.local/share/"
export XDG_CACHE_HOME="$HOME/.cache/"
export XDG_STATE_HOME="$HOME/.local/state/"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh/"

# Set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# Enable/disable shared history
#export HISTFILE="$ZDOTDIR/.histfile"
#export HISTSIZE=5000
#export SAVEHIST=5000

# Comment to disable loading the colourscheme
export TTY_COLOURSCHEME="$ZDOTDIR/solarized-tty/solarized-colourscheme.sh"
