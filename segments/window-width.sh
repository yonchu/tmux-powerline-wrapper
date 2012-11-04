#!/usr/bin/env sh
# Prints the current window width.

if [ -n "$TMUX" ]; then
    tmux list-windows -F "#{window_active} #{window_width}" | sed '/^0/d' | cut -d' ' -f 2
fi

exit 0
