HISTFILE=$XDG_CACHE_HOME/zsh/zsh_history
HISTSIZE=10000
SAVEHIST=10000

export LANG=ja_JP.UTF-8
export LESSCHARSET=utf-8

export TERM=xterm-256color

bindkey -v

export EDITOR=vim

export PATH=$PATH:/sbin:/usr/local/bin
export PATH=$HOME/.pyenv/shims:$PATH
export PATH=$HOME/.nodebrew/current/bin:$PATH
export PATH=$PATH:$HOME/.local/bin

[[ -d ~/.rbenv  ]] && eval "$(rbenv init -)"

autoload colors
colors

autoload -U compinit
compinit -d $XDG_CACHE_HOME/zsh/zcompdump

autoload history-search-end

setopt list_packed
setopt list_types
setopt auto_list
setopt auto_param_keys
setopt auto_param_slash
setopt nolistbeep

zstyle ':completion:*:sudo:*' command-path /usr/local/sbin /usr/local/bin /usr/sbin /usr/bin /sbin /bin
zstyle ':completion:*' group-name ''
zstyle ':completion:*' list-colors di=34 fi=0
zstyle ':completion:*:default' menu select=2
zstyle ':completion:*' list-separator '-->'
zstyle ':completion:*:manuals' separate-sections true

zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end

bindkey "^A" beginning-of-line	
bindkey "^E" end-of-line
bindkey "^W" forward-word
bindkey "^B" backward-word
bindkey "^P" history-beginning-search-backward-end
bindkey "^N" history-beginning-search-forward-end
