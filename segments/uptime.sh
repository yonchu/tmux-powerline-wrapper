#!/usr/bin/env sh
# Prints the uptime.

tmux_powerline_wrapper_dir="$TMUX_POWERLINE_ROOT_DIR/tmux-powerline-wrapper"
source "$tmux_powerline_wrapper_dir/config.sh"

uptime=$(${segments_path}/uptime.sh)
uptime=$(echo "$uptime" | sed 's/^[ \t]*//' | sed 's/[ \t]*$//')
echo "☝  $uptime"

exit 0
