#!/bin/zsh

fpath+=( "${0:A:h}/autoload" )

for f in "${0:A:h}"/libs/**/*.zsh(N-.)
do
    source "$f"
done
unset f

autoload -Uz tmux-loader
autoload -Uz battery
autoload -Uz wifi

autoload -Uz colors
colors
