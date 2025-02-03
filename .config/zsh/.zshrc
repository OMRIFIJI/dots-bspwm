# User configuration
HISTFILE=~/.config/.zsh/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt HIST_IGNORE_ALL_DUPS

# CMP
autoload -U compinit promptinit
compinit
promptinit; prompt gentoo

# Exports
export EDITOR='nvim'
export MANPAGER='nvim +Man!'
export ZSH="$HOME/.oh-my-zsh"

# Set theme
ZSH_THEME="common"

# Plugins
plugins=(
    git
    zsh-vi-mode
    docker
)

# Sources
source $ZSH/oh-my-zsh.sh

# PATH
PATH=${PATH}:~/.local/bin:~/go/bin
PATH=${PATH}:/usr/local/texlive/2024/bin/x86_64-linux
PATH=${PATH}:/opt/flutter/bin

# Aliases
alias vi='nvim'
alias vim='nvim'

# Etc
__git_files () { 
    _wanted files expl 'local files' _files     
}
