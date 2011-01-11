#/bin/sh

BASE=$(cd ${0%/*} && pwd -P)
ln -s $BASE/gvimrc.local $HOME/.gvimrc.local
ln -s $BASE/vimrc.local $HOME/.vimrc.local
