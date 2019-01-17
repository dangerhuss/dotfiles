ZSH_THEME="robbyrussell"
UPDATE_ZSH_DAYS=1
plugins=(shrink-path git pip zsh-syntax-highlighting)

export DOTFILES=$HOME/src/dotfiles
export ZSH_CUSTOM="$DOTFILES/zsh/custom"
export ZSH="$DOTFILES/zsh/oh-my-zsh"
source "$ZSH/oh-my-zsh.sh"
export VIRTUAL_ENV_DISABLE_PROMPT=1

export PROMPT='%{$fg_bold[red]%}$(venv)%{$fg_bold[blue]%}$(git_prompt_info)%{$fg[green]%}$(shrink_path -f)%{$reset_color%} '
export ZSH_THEME_GIT_PROMPT_PREFIX="["
export ZSH_THEME_GIT_PROMPT_SUFFIX="]"
export ZSH_THEME_GIT_PROMPT_DIRTY=" ✗"
export ZSH_THEME_GIT_PROMPT_CLEAN=" ✔"

if [[ -n $VIRTUAL_ENV && -e "${VIRTUAL_ENV}/bin/activate" ]]; then
	source "${VIRTUAL_ENV}/bin/activate"
else
	export VIRTUALENVWRAPPER_PYTHON=$(which python)
	source virtualenvwrapper.sh
fi

# http://patorjk.com/software/taag/#p=display&f=Slant%20Relief&t=dangerhuss
#cat "$DOTFILES/dangerhuss.art"

#if [ -z ${TMUX} ]; then
        #tmux new-session -A -s default
#fi
