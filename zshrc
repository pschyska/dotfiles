# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
ZSH_THEME="paul"

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
plugins=(command-not-found)


source $ZSH/oh-my-zsh.sh
unsetopt CORRECT
unsetopt CORRECT_ALL

alias ll='ls -lahrtp'
alias l='ls -lahp'

alias r='rails'

alias be='bundle exec'

alias gco='git checkout'
alias gbn='git branch --no-merge'
alias gsn='git show --name-only'
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
alias gl='git log --graph --pretty="format:%C(yellow)%h%Cblue%d%Creset %s %C(white) %an, %aD%Creset"'
alias glp'gl git log -p ..@{u}'
alias grbu='git pull --rebase upstream $1'
alias gpu='git pull upstream $1'
alias gpp='git pull && git push'
alias gus='git submodule foreach git pull origin master'
alias karbg="killall ruby; be guard"
alias rgrep="rgrep -i"
alias irgb="gem install rubygems-bundler && gem regenerate_binstubs"

alias z="zeus"


HISTSIZE=2000
setopt HIST_IGNORE_SPACE

# local scripts and stuff
PATH=$PATH:$HOME/bin

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

#PATH=$PATH:/home/pschyska/opt/idea-IU-107.777/bin
PATH=$PATH:/home/pschyska/opt/idea-IU-130.754/bin

PATH=$PATH:$HOME/node_modules/.bin


export SENCHA_CMD_3_0_0="/home/pschyska/bin/Sencha/Cmd/3.1.2.342"
PATH=$PATH:/home/pschyska/bin/Sencha/Cmd/3.1.2.342

#export SENCHA_CMD_3_0_0="$HOME/bin/Sencha/Cmd/3.0.2.288"
#PATH=$PATH:$HOME/bin/Sencha/Cmd/3.0.2.288

# elasticsearch
PATH=$PATH:/usr/share/elasticsearch/bin

PATH=$PATH:$HOME/opt/adt-bundle-linux-x86_64-20130514/sdk/tools
PATH=$PATH:$HOME/opt/adt-bundle-linux-x86_64-20130514/sdk/platform-tools

# heroku

PATH=$PATH:/usr/local/heroku/bin

# golang

# default go path
export GOPATH=$HOME/projects/go
PATH=$PATH:$GOPATH/bin

# gob scripts for automatically setting go path
[[ -s "/home/pschyska/projects/gob/gob.sh" ]] && source "/home/pschyska/projects/gob/gob.sh" # Load gob

# add this GOPATH/bin globally, so programs in there are available even if gob selects a project-specific GOPATH
# (i.e. gocode)
PATH=$PATH:$HOME/projects/go/bin

# Sublime Text
PATH=$PATH:"/home/pschyska/opt/Sublime Text 2"
export EDITOR="gvim -f"

export CLASSPATH=$CLASSPATH:$HOME/projects/liferay/workspace/liferay-fs/liferay-portal/lib/development/ecj.jar
export ANT_OPTS="-Xmx2048m -XX:MaxPermSize=512m"
export MAVEN_OPTS="-Xmx2048m -XX:MaxPermSize=512m"

export CATALINA_OPTS="-Dshutdown.port=8005 -Dhttp.port=8080\
                -Dhttp.address=127.0.0.1 -Dhttp.redirectPort=8443\
                -Dajp.port=8009 -Dajp.redirectPort=8443\
                -Dajp.address=127.0.0.1 -DjvmRoute=local\
                -Daccess.log.dir=/tmp/"

cowthink 'The fun never ends!' | toilet -F gay -f term
alias wtf\?=nyancat
