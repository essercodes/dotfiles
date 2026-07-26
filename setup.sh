#!/usr/bin/env bash
set -e

BASEDIR=$(dirname "$0")

TMUX_LOC="$HOME/.tmux.conf"
if [ ! -f $TMUX_LOC ]; then
    ln -s "$BASEDIR/.tmux.conf" "$TMUX_LOC"
    echo "Symlink created: $TMUX_LOC"
else
    echo "Already exists: $TMUX_LOC"
fi

ZSH_LOC="$HOME/.zshrc"
if [ ! -f $ZSH_LOC ]; then
    ln -s "$BASEDIR/.zshrc" "$ZSH_LOC"
    echo "Symlink created: $ZSH_LOC"
else
    echo "Already exists: $ZSH_LOC"
fi
