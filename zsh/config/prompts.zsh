#!/usr/bin/env zsh
# -------------------------------------------------------------------------------------------------
# Copyright (c) Pavel Osipov <posipov84@gmail.com> 2013.
# All rights reserved.

BASE_PS1=$'%{\e[00;38;5;166m%}%D{%L}:%D{%M} %#%{\e[0m%} '
BASE_RPS1=$'%{\e[00;38;5;166m%}%25<..<%~%{\e[0m%}'

PS1=$BASE_PS1
RPS1=$BASE_RPS1

function zle-line-init zle-keymap-select {
    PS1="${${KEYMAP/vicmd/${CMD_MODE_PS1}}/(main|viins)/${BASE_PS1}}"
    RPS1=$BASE_RPS1

    zle reset-prompt
    zle -R
}

function zle-line-finish {
	zle expand-history

	typeset last_cmd cmd hnum
	fc -l | tail -n1 | sed -e 's/^\s\+\([0-9]\+\)\*\?\s\+\(.*\)\s*$/\1:\2/' | IFS=':' read hnum last_cmd
	echo $BUFFER | sed -e 's/^\s\+//' | sed -e 's/\s\+$//' | read cmd

	if [[ $cmd = "" ]]; then
		PS1=${BASE_PS1:s/'%D{%L}:%D{%M}'/}
	elif [[ $cmd = $last_cmd ]]; then
		PS1=${BASE_PS1:s/'%D{%L}:%D{%M}'/'!'$hnum}
	else
		PS1=${BASE_PS1:s/'%D{%L}:%D{%M}'/'!%h'}
    fi
	RPS1=''

    zle reset-prompt
}

zle -N zle-line-init
zle -N zle-line-finish
zle -N zle-keymap-select