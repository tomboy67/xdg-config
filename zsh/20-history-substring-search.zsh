if zplug check "zsh-users/zsh-history-substring-search"; then
    bindkey '^K' history-substring-search-up
    bindkey '^N' history-substring-search-down
fi
