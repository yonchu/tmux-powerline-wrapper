#!/usr/bin/env sh
# Prints the Load Average and the Used Memory(%).

source "$TMUX_POWERLINE_WRAPPER_DIR/config.sh"

load=$(${segments_path}/load.sh)
load=$(echo "$load" | sed 's/^[ \t]*//' | sed 's/[ \t]*$//')
echo "(${load}) Ⓜ  $(${wrapper_segments_path}/used-mem.sh)%"

exit 0
