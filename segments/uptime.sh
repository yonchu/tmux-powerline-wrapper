#!/usr/bin/env sh
# Prints the uptime.

source "$TMUX_POWERLINE_WRAPPER_DIR/config.sh"

uptime=$(${segments_path}/uptime.sh)
uptime=$(echo "$uptime" | sed 's/^[ \t]*//' | sed 's/[ \t]*$//')
echo "☝  $uptime"

exit 0
