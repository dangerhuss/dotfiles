ZSH_THEME="robbyrussell"
UPDATE_ZSH_DAYS=1
plugins=(git zsh-syntax-highlighting)

export DOTFILES=$HOME/src/dotfiles
export ZSH_CUSTOM="$DOTFILES/zsh/custom"
export ZSH="$DOTFILES/zsh/oh-my-zsh"
source "$ZSH/oh-my-zsh.sh"

