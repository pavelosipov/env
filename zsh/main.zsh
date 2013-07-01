#!/usr/bin/env zsh
# -------------------------------------------------------------------------------------------------
# Copyright (c) Pavel Osipov <posipov84@gmail.com> 2013.
# All rights reserved.

ZSH_DEFAULT_USER="furj"

# Paths
ZSH_ENV_PATH=~/env/zsh
ZSH_CONFIG_PATH=$ZSH_ENV_PATH/config
ZSH_DIRCOLORS_PATH=$ZSH_ENV_PATH/dircolors/dircolors.256dark

source $ZSH_CONFIG_PATH/aliases.zsh
source $ZSH_CONFIG_PATH/options.zsh
source $ZSH_CONFIG_PATH/bindings.zsh
