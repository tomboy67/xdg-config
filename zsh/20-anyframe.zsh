if zplug check "mollifier/anyframe"; then
    bindkey '^xh' anyframe-widget-put-history
    bindkey '^xg' anyframe-widget-cd-ghq-repository
    bindkey '^xk' anyframe-widget-kill
    bindkey '^xt' anyframe-widget-tmux-attach
fi
