#!/usr/bin/env sh
# Prints the Load Average and the Used Memory(%).

source "$TMUX_POWERLINE_WRAPPER_DIR/config.sh" || exit 1

echo "($(${segments_path}/load.sh)) Ⓜ  $(${wrapper_segments_path}/used-mem.sh)%"

exit 0
