[ $UID -eq 0 ] && ZSH_DISABLE_COMPFIX="true"

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="clean"
DISABLE_AUTO_TITLE="true"
ZSH_PYENV_QUIET="true"
COMPLETION_WAITING_DOTS="true"

plugins=(
    fancy-ctrl-z
    git-escape-magic
    git-extras
    lol
    pyenv
    ripgrep
    thefuck
    z
)

zstyle ':omz:update' mode disabled

source $ZSH/oh-my-zsh.sh

[ ! -f ~/.profile ] || source ~/.profile

alias ssh="TERM=xterm-256color ssh"
