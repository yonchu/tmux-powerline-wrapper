tmux-powerline-wrapper
======================

This is wrapper scripts for [erikw/tmux-powerline](https://github.com/erikw/tmux-powerline).

In order to use this scripts, requires to original scripts
([erikw/tmux-powerline](https://github.com/erikw/tmux-powerline)).

# Requirements

 - tmux 1.7 or later
 - bash version 4.0


Please refer to requiremets in [erikw/tmux-powerline](https://github.com/erikw/tmux-powerline).

# Installation

Make directory ".tmux" and cd:

```bash
$ mkdir ~/.tmux
$ cd ~/.tmux
```

If you want to change ~/.tmux. Add the following to your ~/.bashrc or ~/.zshrc.

```bash
export TMUX_POWERLINE_ROOT_DIR=~/some/path
```

Clone this scripts and [erikw/tmux-powerline](https://github.com/erikw/tmux-powerline)
from github:

```console
$ git clone git://github.com/yonchu/tmux-powerline-wrapper.git
$ git clone git://github.com/erikw/tmux-powerline.git
```


Add the following settings to your ~/.tmux.conf to use this scripts:

```vim
set-option -g status on
set -g status-interval 5
set-option -g status-utf8 on

# Left status line
if "test -f ~/.tmux/tmux-powerline/status-left.sh \
    -a -f ~/.tmux/tmux-powerline-wrapper/status-left.sh" \
    "set-option -g status-left-length 80"
if "test -f ~/.tmux/tmux-powerline/status-left.sh \
    -a -f ~/.tmux/tmux-powerline-wrapper/status-left.sh" \
    "set-option -g status-left '#(~/.tmux/tmux-powerline-wrapper/status-left.sh)'"

# Right status line
if "test -f ~/.tmux/tmux-powerline/status-right.sh \
    -a -f ~/.tmux/tmux-powerline-wrapper/status-right.sh" \
    "set-option -g status-right-length 100"
if "test -f ~/.tmux/tmux-powerline/status-right.sh \
    -a -f ~/.tmux/tmux-powerline-wrapper/status-right.sh" \
    "set-option -g status-right '#(~/.tmux/tmux-powerline-wrapper/status-right.sh)'"
```

See also
---------------

* [よんちゅBlog](http://yonchu.hatenablog.com/)
