#!/usr/bin/env zsh
# -------------------------------------------------------------------------------------------------
# Copyright (c) Pavel Osipov <posipov84@gmail.com> 2013.
# All rights reserved.

ZSH_DEFAULT_USER="furj"

# Paths
ZSH_ENV_PATH=~/env/zsh
ZSH_SETTINGS_PATH=$ZSH_ENV_PATH/settings
ZSH_DIRCOLORS_PATH=$ZSH_ENV_PATH/dircolors/dircolors.256dark

source $ZSH_SETTINGS_PATH/aliases.zsh

echo DIRCOLORS_PATH=$ZSH_DIRCOLORS_PATH