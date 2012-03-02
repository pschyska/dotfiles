# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
ZSH_THEME="kphoen"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git osx bundler)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
[[ -s "/Users/pasc/.rvm/scripts/rvm" ]] && source "/Users/pasc/.rvm/scripts/rvm"  # This loads RVM into a shell session.

# alias mvim='rvm system do /usr/local/bin/mvim $@'

# brews first
export PATH=/usr/local/bin:/usr/local/sbin:$PATH

# Lion ships with llvm-gcc-4.2 as default compiler, fix that as it breaks rubies and brews
export CC=/usr/bin/gcc-4.2
export CXX=/usr/bin/g++-4.2

alias ll='ls -lahrtp'
alias l='ls -lahp'

export VB="$HOME/.vimrc.before"
export VA="$HOME/.vimrc.after"
export GB="$HOME/.gvimrc.before"
export GA="$HOME/.gvimrc.after"

export EDITOR="mvim -f"

alias r='rails'
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

alias grbu='git pull --rebase upstream $1'
alias gpu='git pull upstream $1'

alias p='mvim ~/.profile'

#alias ep='ls *.tmproj && open *.tmproj || m .'
#alias e='ep'

alias c="cucumber -f pretty -t ~@slow"
alias cuc="c -t @current"

alias bi="bundle install"

