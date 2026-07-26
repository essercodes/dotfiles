# ~/.zshrc
if [ "$TMUX" = "" ]; then tmux; fi

eval "$(starship init zsh)"

export PATH="$PATH:$HOME/Development/flutter/bin"
export PATH="$PATH:$HOME/bin"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/max/Development/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/max/Development/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/max/Development/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/max/Development/google-cloud-sdk/completion.zsh.inc'; fi
source <(kubectl completion zsh)

export PY_VER="3.12"
alias python=python3
alias pip=pip3

export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

export USE_GKE_GCLOUD_AUTH_PLUGIN=True
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)

# pnpm
export PNPM_HOME="/Users/max/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /opt/homebrew/bin/terraform terraform

export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="/opt/homebrew/opt/python/bin:$PATH"
source /Users/max/.config/op/plugins.sh

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/max/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/max/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/max/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/max/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

