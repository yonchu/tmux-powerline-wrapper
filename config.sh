#!/bin/sh

# The tmux-powerline root dir
tmux_powerline_root_dir=${TMUX_POWERLINE_WRAPPER_DIR%/*}

# The tmux-powerline directory path.
tmux_powerline_dir="$tmux_powerline_root_dir/tmux-powerline"
if [ ! -d "$tmux_powerline_dir" ]; then
    echo "tmux-powerline directory is not found: $tmux_powerline_dir"
    exit 1
fi

# Set .tmux-powerlinerc.
TMUX_POWERLINE_RC_FILE='.tmux-powerlinerc'

# Source default .tmux-powerlinerc
if [ -f "$TMUX_POWERLINE_WRAPPER_DIR/$TMUX_POWERLINE_RC_FILE" ]; then
    source "$TMUX_POWERLINE_WRAPPER_DIR/$TMUX_POWERLINE_RC_FILE"
fi

# Source user .tmux-powerlinerc.
if [ -f "$HOME/$TMUX_POWERLINE_RC_FILE" ]; then
    source "$HOME/$TMUX_POWERLINE_RC_FILE"
elif [ -f "$tmux_powerline_root_dir/$TMUX_POWERLINE_RC_FILE" ]; then
    source "$tmux_powerline_root_dir/$TMUX_POWERLINE_RC_FILE"
fi


# Source tmux-powerline global configurations.
source "${tmux_powerline_dir}/config.sh"

# Source lib functions.
source "${tmux_powerline_dir}/lib.sh"


# The tmux-powerline segments path.
segments_path="${tmux_powerline_dir}/${segments_dir}"
if [ ! -d "$segments_path" ]; then
    echo "tmux-powerline segments directory is not found: $segments_path"
    exit 1
fi

# The tmux-powerline-wrapper segments path.
wrapper_segments_path="${TMUX_POWERLINE_WRAPPER_DIR}/segments"
if [ ! -d "$wrapper_segments_path" ]; then
    echo "tmux-powerline-wrapper segments directory is not found: $wrapper_segments_path"
    exit 1
fi

# Set tmux window width.
window_width="$(${wrapper_segments_path}/window-width.sh)"


# Set .tmux-powerline-status-left.sh.
TMUX_POWERLINE_STATUS_LEFT_FILE='.tmux-powerline-status-left.sh'

# Set .tmux-powerline-right-left.sh.
TMUX_POWERLINE_STATUS_RIGHT_FILE='.tmux-powerline-status-right.sh'
