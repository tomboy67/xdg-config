#!/bin/bash

DOT_FILES=( .zshrc .zshenv .tmux.conf )

for file in ${DOT_FILES[@]}
do
    rm $HOME/$file
done
