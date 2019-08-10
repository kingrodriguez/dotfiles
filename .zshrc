# Path to your oh-my-zsh installation.
  export ZSH="/home/thc/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME=powerlevel10k/powerlevel10k

plugins=(sudo)

source $ZSH/oh-my-zsh.sh

# User configuration
# Exports

export EDITOR='vim'
# export MANPATH="/usr/local/man:$MANPATH"
export LANG=en_US.UTF-8

alias ls="ls -hN --color=auto --group-directories-first"
alias config='/usr/bin/git --git-dir=/home/thc/.dotfiles/ --work-tree=/home/thc'

# dircolors
eval $(dircolors ~/.dircolors.solarized256dark)

# Powerlevel10k and Pure Power themes
source ~/.oh-my-zsh/custom/themes/powerlevel10k/powerlevel10k.zsh-theme

#screenfetch on start
screenfetch -c 29,

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh
