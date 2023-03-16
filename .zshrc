#  ____ ____ ____ ____ ____ ____ ____
# ||S |||O |||L |||O |||M |||O |||N ||
# ||__|||__|||__|||__|||__|||__|||__||
# |/__\|/__\|/__\|/__\|/__\|/__\|/__\|
#

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# User configuration

alias c="clear"
alias {config,cfg}="/usr/bin/git --git-dir=/home/$USER/.cfg/ --work-tree=/home/$USER"
alias gs="git status"
alias {reload,rl}="source ~/.zshrc"
alias top="htop"

export GPG_TTY=$(tty)
export PATH="$HOME/.rbenv/bin:$PATH"

eval "$(rbenv init -)"
eval "$(starship init zsh)"
eval "$(chef shell-init zsh)"

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/bin/terraform terraform
