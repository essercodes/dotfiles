#!/usr/bin/env bash
set -e

dir=$(cd -- "${1:-.}" 2>/dev/null && pwd -P)
echo "dotfiles-dir: ${dir}"

create_link(){
    config_src=$1
    config_dst=$2

    if [ -L "$config_dst" ]; then
        echo "Link already exists: $config_dst"
    elif [ -f "$config_dst" ]; then
        echo "File already exists: $config_dst"
    else
        ln -s "$config_src" "$config_dst"
        echo "Symlink created: $config_src -> $config_dst"
    fi
}

create_link "$dir/.tmux.conf" "$HOME/.tmux.conf" 
create_link "$dir/.zshrc" "$HOME/.zshrc" 
