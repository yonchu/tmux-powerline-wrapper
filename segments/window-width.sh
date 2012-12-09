#!/usr/bin/env sh
# Prints the current window width.

if [ -n "$TMUX" ]; then
    tmux display -p "#{window_width}"
fi

exit 0
