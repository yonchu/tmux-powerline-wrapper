#!/usr/bin/env bash

# The tmux-powerline-wrapper directory path.
TMUX_POWERLINE_WRAPPER_DIR=$(cd "$(dirname "$0")" && pwd)
export TMUX_POWERLINE_WRAPPER_DIR

# Source tmux-powerline-wrapper global configurations.
source "$TMUX_POWERLINE_WRAPPER_DIR/config.sh"

if [ "$(bash -c 'echo ${BASH_VERSINFO[0]}')" -lt 4 ]; then
    exit 1
fi
exit 0