#!/usr/bin/env bash

# Disable tmux-powerline?
DISABLE_TMUX_POWERLINE=$(tmux showenv -g DISABLE_TMUX_POWERLINE 2> /dev/null)
DISABLE_TMUX_POWERLINE=${DISABLE_TMUX_POWERLINE#*=}
if [ -n "$DISABLE_TMUX_POWERLINE" ]; then
    exit 1
fi

# The tmux-powerline-wrapper directory path.
TMUX_POWERLINE_WRAPPER_DIR=$(cd "$(dirname "$0")" && pwd)
export TMUX_POWERLINE_WRAPPER_DIR

# Source tmux-powerline-wrapper global configurations.
source "$TMUX_POWERLINE_WRAPPER_DIR/config.sh"

if [ "$(bash -c 'echo ${BASH_VERSINFO[0]}')" -lt 4 ]; then
    exit 1
fi
exit 0
