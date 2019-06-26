 export TERM="xterm-256color"

# ----------
# ZSH Config
# ----------

# Path to your oh-my-zsh installation.
export ZSH=${HOME}/.oh-my-zsh


# -----------------
# Theme & UI Config
# -----------------

ZSH_THEME="spaceship"
SPACESHIP_PACKAGE_SHOW=false

HYPHEN_INSENSITIVE="true"

COMPLETION_WAITING_DOTS="true"

DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(git autopep8 ruby common-aliases osx zsh-syntax-highlighting)


# --------------
# SSH Config
# --------------

ssh-es-indexer-1() {
  ssh -i ~/.ec2/twenty20-dev-keypair.pem ubuntu@54.211.71.136
}

autoload -U compinit
compinit


# --------------
# Custom Aliases
# --------------

function f() { find . -iname "*$1*" ${@:2} }
function f() { grep "$1" ${@:2} -R . }

alias be='bundle exec'
alias mine='/usr/local/bin/rubymine'
alias vim='/usr/local/bin/vim'
alias web='/usr/local/bin/webstorm'

# Allows for batch rename
autoload -U zmv
alias zmv='noglob zmv -w'


# ---------------------------------------------
# Git Aliases
# ---------------------------------------------

alias gs='git status'
alias gd='git diff'
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias gb='git branch'
alias gco='git checkout'
alias gl='git log'


# ---------------------------------------------
# Path Shortcuts
# ---------------------------------------------

# Work shortcuts
hash -d t20="${HOME}/Developer/twenty20"
hash -d re="${HOME}/Developer/reshot"

# Personal shortcuts
hash -d fb="${HOME}/Developer/Future_Butcher"
hash -d ws="${HOME}/Developer/William_Storck"

export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"
source $ZSH/oh-my-zsh.sh

. $HOME/.asdf/asdf.sh

. $HOME/.asdf/completions/asdf.bash
