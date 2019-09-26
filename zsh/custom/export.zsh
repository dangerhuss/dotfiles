# Dotfiles
export SRC="$HOME/src"
export DOT="$SRC/dotfiles"

# ZSH
export ZSH="$DOT/zsh/oh-my-zsh"
export ZSH_CUSTOM="$DOT/zsh/custom"

# Python
# export PATH="$(python2 -m site --user-base)/bin:$PATH"
export PATH="$(python3 -m site --user-base)/bin:$PATH"

# Brew
export BREW=$(dirname $(which brew))
export PATH="$BREW:$PATH"

# Go
export GOPATH="$HOME/go"
export PATH="$GOPATH/bin:$PATH"

# Man
export MANPAGER="col -b | nvim -c 'set ft=man' -"


