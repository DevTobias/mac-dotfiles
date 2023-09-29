#! Zsh configuration

# Path to your oh-my-zsh installation.
export PATH=/opt/homebrew/bin:$HOME/bin:$PATH
export ZSH="$HOME/.oh-my-zsh"

# Theme definition (see https://github.com/robbyrussell/oh-my-zsh/wiki/themes)
ZSH_THEME="robbyrussell"

# Disable warning about insecure completion-dependent directories
ZSH_DISABLE_COMPFIX=true

# Update automatically without asking
zstyle ':omz:update' mode auto

# Shell plugins
plugins=(git gitfast last-working-dir common-aliases zsh-syntax-highlighting history-substring-search)

# Actually load Oh-My-Zsh
source $ZSH/oh-my-zsh.sh


#! User configuration

# Alias

# Misc alias
alias cls='clear'
eval $(thefuck --alias)

# Override ls alias to use the exa tool
alias l='exa'
alias la='exa -a'
alias ll='exa --icons -lah'
alias ls="exa --icons --grid --classify --colour=auto --sort=type --group-directories-first --header --modified --created --binary --group"

# Navigation alias

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# Git alias

alias g="git"
alias gl='git pull --prune'
alias gp='git push origin HEAD'
alias gundo="git reset --soft HEAD~"
alias gamend="git commit -av --amend --no-edit"
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gc='git commit'
alias gco='git checkout'
alias gb='git branch'

# Bun configuration
[ -s "~/.bun/_bun" ] && source "~/.bun/_bun"
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
