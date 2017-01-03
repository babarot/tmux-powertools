#!/bin/zsh

fpath+=( "${${:-./autoload}:A}" )

for f in "${0:A:h}"/libs/*.zsh
do
    source "$f"
done
unset f

autoload -Uz tmux-loader
autoload -Uz battery
autoload -Uz wifi

autoload -Uz colors
colors
