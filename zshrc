# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
ZSH_THEME="kphoen"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
#plugins=(git)
plugins=(ruby rails bundler)

source $ZSH/oh-my-zsh.sh
unsetopt CORRECT
unsetopt CORRECT_ALL

alias ll='ls -lahrtp'
alias l='ls -lahp'

alias r='rails'

alias be='bundle exec'

alias gco='git checkout'
alias gf='git fetch'
alias gp='git pull'
alias gpu='git pull upstream'
alias gps='git push'
alias gm='git merge'
alias g='git status'
alias gs='g'
alias gc='git commit -v'
alias gca='git commit -v -a'
alias gru='git remote update'
alias gl='git log --graph --pretty="format:%C(yellow)%h%Cblue%d%Creset %s %C(white) %an, %ar%Creset"'
alias glp'gl git log -p ..@{u}'
alias grbu='git pull --rebase upstream $1'
alias gpu='git pull upstream $1'
alias gus='git submodule foreach git pull origin master'
alias karbg="killall ruby; be guard"

HISTSIZE=2000
setopt HIST_IGNORE_SPACE
cowthink 'The fun never ends!'

# Customize to your needs...
export PATH=/home/pschyska/bin:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
