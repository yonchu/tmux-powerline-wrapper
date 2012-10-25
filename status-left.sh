#!/usr/bin/env bash
#
# Print the status-left for tmux.
#

# The tmux-powerline root directory.
if [ -z "$TMUX_POWERLINE_ROOT_DIR" ]; then
    export TMUX_POWERLINE_ROOT_DIR=~/.tmux
fi

if [ ! -d "$TMUX_POWERLINE_ROOT_DIR" ]; then
    echo "tmux-powerline-wrapper root directory is not found: $TMUX_POWERLINE_ROOT_DIR"
    exit 1
fi

# The tmux-powerline-wrapper directory path.
tmux_powerline_wrapper_dir="$TMUX_POWERLINE_ROOT_DIR/tmux-powerline-wrapper"

if [ ! -d "$tmux_powerline_wrapper_dir" ]; then
    echo "tmux-powerline-wrapper directory is not found: $tmux_powerline_wrapper_dir"
    exit 1
fi

source "$tmux_powerline_wrapper_dir/config.sh"


## Register segments
#
#   tmux-powerline segments path: ${segments_path}
#
#   tmux-powerline-wrapper segments path: ${wrapper_segments_path}
#
declare -A tmux_session_info
tmux_session_info+=(["script"]="${segments_path}/tmux_session_info.sh")
tmux_session_info+=(["foreground"]="colour234")
tmux_session_info+=(["background"]="colour148")
tmux_session_info+=(["separator"]="${separator_right_bold}")
#tmux_session_info+=(["separator_fg"]="default")
register_segment "tmux_session_info"

declare -A ostype
ostype+=(["script"]="${wrapper_segments_path}/ostype.sh")
ostype+=(["foreground"]="colour21")
ostype+=(["background"]="colour33")
ostype+=(["separator"]="${separator_right_bold}")
register_segment "ostype"

#declare -A username
#username+=(["script"]="whoami")
#username+=(["foreground"]="colour0")
#username+=(["background"]="colour33")
#username+=(["separator"]="${separator_right_bold}")
#register_segment "username"

declare -A lan_ip
lan_ip+=(["script"]="${segments_path}/lan_ip.sh")
lan_ip+=(["foreground"]="colour255")
lan_ip+=(["background"]="colour24")
lan_ip+=(["separator"]="${separator_right_bold}")
register_segment "lan_ip"

declare -A wan_ip
wan_ip+=(["script"]="${segments_path}/wan_ip.sh")
wan_ip+=(["foreground"]="colour255")
wan_ip+=(["background"]="colour24")
wan_ip+=(["separator"]="${separator_right_thin}")
wan_ip+=(["separator_fg"]="white")
register_segment "wan_ip"

declare -A vcs_branch
vcs_branch+=(["script"]="${segments_path}/vcs_branch.sh")
vcs_branch+=(["foreground"]="colour88")
vcs_branch+=(["background"]="colour52")
vcs_branch+=(["separator"]="${separator_right_bold}")
register_segment "vcs_branch"

# Print the status line in the order of registration above.
print_status_line_left

exit 0
