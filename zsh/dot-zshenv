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

# Package managers
export GOPATH="$HOME/PackageManagers/go"
export CARGO_HOME="$HOME/PackageManagers/cargo"

# Set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ]; then
    #echo "Adding $HOME/.local/bin to PATH"
    export PATH="$HOME/.local/bin:$PATH"
fi

# Set PATH so it includes the GOPATH binaries if it exists
if [ -n "$GOPATH" ] && [ -d "$GOPATH/bin" ]; then
    #echo "Adding $GOPATH/bin to PATH"
    export PATH="$GOPATH/bin:$PATH"
fi

# Set PATH so it includes the CARGO_HOME binaries if it exists
if [ -n "$CARGO_HOME" ] && [ -d "$CARGO_HOME/bin" ]; then
    #echo "Adding $CARGO_HOME/bin to PATH"
    export PATH="$CARGO_HOME/bin:$PATH"
fi

# Enable/disable shared history
#export HISTFILE="$ZDOTDIR/.histfile"
#export HISTSIZE=5000
#export SAVEHIST=5000

# Comment to disable loading the colourscheme
export TTY_COLOURSCHEME="$ZDOTDIR/solarized-tty/solarized-colourscheme.sh"
