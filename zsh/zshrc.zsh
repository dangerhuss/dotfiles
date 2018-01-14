ZSH_THEME="robbyrussell"
UPDATE_ZSH_DAYS=1
plugins=(git brew zsh-syntax-highlighting)

export DOTFILES=$HOME/src/dotfiles
export ZSH_CUSTOM="$DOTFILES/zsh/custom"
export ZSH="$DOTFILES/zsh/oh-my-zsh"
source "$ZSH/oh-my-zsh.sh"

export VIRTUALENVWRAPPER_PYTHON="$(which python2)"
source virtualenvwrapper.sh

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
