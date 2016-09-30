alias vim=nvim

case "${OSTYPE}" in
freebsd*|darwin*)
    alias ls="ls -alG"
    zle -N expand-to-home-or-insert
    bindkey "@"  expand-to-home-or-insert
    ;;
linux*)
    alias la="ls -al"
    ;;
esac
