[ $UID -eq 0 ] && ZSH_DISABLE_COMPFIX="true"

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="meow"
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

export FZF_DEFAULT_OPTS=" \
--color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8 \
--color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc \
--color=marker:#f5e0dc,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8"
