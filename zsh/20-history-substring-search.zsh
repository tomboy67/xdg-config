if zplug check "zsh-users/zsh-history-substring-search"; then
    bindkey '^R' history-substring-search-up
    bindkey '^S' history-substring-search-down
fi
