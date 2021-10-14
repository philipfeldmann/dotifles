ZSH=$HOME/.oh-my-zsh
ZSH_CUSTOM=$HOME/zsh_custom
ZSH_THEME="agnoster"

export EDITOR='nvim'
export TERM='xterm-kitty'

# Plugins
plugins=(git vi-mode)

source $ZSH/oh-my-zsh.sh

# Tmux
alias tm='tmux'
alias vi='nvim'
alias vim='nvim'

[[ ! -n $(command -v zoxide) ]] || source <(zoxide init zsh)
