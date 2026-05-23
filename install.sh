#!/bin/sh

npm install -g --quiet --ignore-scripts @earendil-works/pi-coding-agent

ddir="$(dirname $0)/dotfiles"

ln -s $ddir/tmux.conf $HOME/.tmux.conf
envsubst < $ddir/netrc > $HOME/.netrc
envsubst < $ddir/gitconfig > $HOME/.gitconfig
