#!/bin/bash

[ -d $XDG_CACHE_HOME/zsh ] || mkdir -p $XDG_CACHE_HOME/zsh
[ -d $XDG_CACHE_HOME/zplug ] || mkdir -p $XDG_CACHE_HOME/zplug

ZSH_DOT_FILES=( zshrc zshenv )

for file in ${ZSH_DOT_FILES[@]}
do
    ln -sF $XDG_CONFIG_HOME/zsh/$file $HOME/.$file
done

HOMEBREW_DOT_FILES=( Brewfile )

for file in ${HOMEBREW_DOT_FILES[@]}
do
    ln -sF $XDG_CONFIG_HOME/homebrew/$file $HOME/.$file
done
