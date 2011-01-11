#/bin/sh

BASE=$(cd ${0%/*} && pwd -P)
ln -s $BASE/gvimrc.local $HOME/.gvimrc.local
