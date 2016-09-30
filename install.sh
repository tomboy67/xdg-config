#!/bin/bash

[ -d $XDG_CACHE_HOME/zsh ] || mkdir $XDG_CACHE_HOME/zsh
[ -d $XDG_CACHE_HOME/zplug ] || mkdir $XDG_CACHE_HOME/zplug

ZSH_DOT_FILES=( zshrc zshenv )

for file in ${ZSH_DOT_FILES[@]}
do
    ln -sF $XDG_CONFIG_HOME/zsh/$file $HOME/.$file
done

TMUX_DOT_FILES=( tmux.conf )

for file in ${TMUX_DOT_FILES[@]}
do
    ln -sF $XDG_CONFIG_HOME/tmux/$file $HOME/.$file
done

GIT_DOT_FILES=( gitconfig gitignore )

for file in ${GIT_DOT_FILES[@]}
do
    ln -sF $XDG_CONFIG_HOME/git/$file $HOME/.$file
done
