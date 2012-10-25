#!/bin/sh

# The tmux-powerline directory path.
tmux_powerline_dir="${TMUX_POWERLINE_ROOT_DIR}/tmux-powerline"

# Source tmux-powerline global configurations.
source "${tmux_powerline_dir}/config.sh"

# PLATFORM {linux,bsd,mac}
case "$OSTYPE" in
    darwin*)
        export PLATFORM="mac"
        ;;
    freebsd*)
        export PLATFORM="bsd"
        ;;
    linux*)
        export PLATFORM="linux"
        ;;
esac

# Source lib functions.
source "${tmux_powerline_dir}/lib.sh"


# The tmux-powerline segments path.
segments_path="${tmux_powerline_dir}/${segments_dir}"

# The tmux-powerline-wrapper segments path.
wrapper_segments_path="${tmux_powerline_wrapper_dir}/segments"
