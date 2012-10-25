#!/usr/bin/env sh
# Prints the Load Average and the Used Memory(%).

tmux_powerline_wrapper_dir="$TMUX_POWERLINE_ROOT_DIR/tmux-powerline-wrapper"
source "$tmux_powerline_wrapper_dir/config.sh"

load=$(${segments_path}/load.sh)
load=$(echo "$load" | sed 's/^[ \t]*//' | sed 's/[ \t]*$//')
echo "(${load}) Ⓜ  $(${wrapper_segments_path}/used-mem.sh)%"

exit 0
