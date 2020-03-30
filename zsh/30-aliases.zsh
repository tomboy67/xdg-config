alias vim=nvim
alias tmux='tmux -f $XDG_CONFIG_HOME/tmux/tmux.conf'

case "${OSTYPE}" in
freebsd*|darwin*)
    alias ls="ls -alG"
    zle -N expand-to-home-or-insert
    ;;
linux*)
    alias la="ls -al"
    ;;
esac
