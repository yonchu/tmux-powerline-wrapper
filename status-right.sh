#!/usr/bin/env bash
#
# Print the status-right for tmux.
#

# The tmux-powerline-wrapper directory path.
if [ -z "$TMUX_POWERLINE_WRAPPER_DIR" ]; then
    TMUX_POWERLINE_WRAPPER_DIR=$(cd "$(dirname "$0")" && pwd)
    export TMUX_POWERLINE_WRAPPER_DIR
fi

# Source tmux-powerline-wrapper global configurations.
source "$TMUX_POWERLINE_WRAPPER_DIR/config.sh"

# Source status settings.
if [ -f "$HOME/$TMUX_POWERLINE_STATUS_RIGHT_FILE" ]; then
    source "$HOME/$TMUX_POWERLINE_STATUS_RIGHT_FILE"
elif [ -f "$tmux_powerline_root_dir/$TMUX_POWERLINE_STATUS_RIGHT_FILE" ]; then
    source "$tmux_powerline_root_dir/$TMUX_POWERLINE_STATUS_RIGHT_FILE"
elif [ -f "$TMUX_POWERLINE_WRAPPER_DIR/$TMUX_POWERLINE_STATUS_RIGHT_FILE" ]; then
    source "$TMUX_POWERLINE_WRAPPER_DIR/$TMUX_POWERLINE_STATUS_RIGHT_FILE"
else
    echo "$TMUX_POWERLINE_STATUS_RIGHT_FILE is not found"
    exit 1
fi

# Print the status line in the order of registration above.
print_status_line_right

exit 0
