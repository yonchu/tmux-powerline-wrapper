tmux-powerline-wrapper
======================

This is wrapper scripts for [erikw/tmux-powerline](https://github.com/erikw/tmux-powerline).

In order to use this scripts, requires to original scripts
([yonchu/tmux-powerline](https://github.com/yonchu/tmux-powerline)).


## Screenshot
![Screenshot](https://raw.github.com/yonchu/tmux-powerline-wrapper/master/img/sample_full_status.png)


# Requirements

 - tmux 1.7 or later
 - bash version 4.0 or later


Please refer to requiremets in [erikw/tmux-powerline](https://github.com/erikw/tmux-powerline).

# Installation

Make directory `.tmux` and cd:
(You can also make other directory.)

```bash
$ mkdir ~/.tmux
$ cd ~/.tmux
```

Clone this scripts (tmux-powerline-wrapper) and [yonchu/tmux-powerline](https://github.com/yonchu/tmux-powerline)
from github in the above directory:

```console
$ git clone git://github.com/yonchu/tmux-powerline-wrapper.git
$ git clone git://github.com/yonchu/tmux-powerline.git
```


Add the following settings to your `~/.tmux.conf` to use this scripts
(change the path if need be):

```vim
set-option -g status on
set -g status-interval 5
set-option -g status-utf8 on

# Left status line
if "~/.tmux/tmux-powerline-wrapper/test-tmux-powerline.sh" \
    "set-option -g status-left-length 100"
if "~/.tmux/tmux-powerline-wrapper/test-tmux-powerline.sh" \
    "set-option -g status-left '#(~/.tmux/tmux-powerline-wrapper/status-left.sh)'"

# Right status line
if "~/.tmux/tmux-powerline-wrapper/test-tmux-powerline.sh" \
    "set-option -g status-right-length 100"
if "~/.tmux/tmux-powerline-wrapper/test-tmux-powerline.sh" \
    "set-option -g status-right '#(~/.tmux/tmux-powerline-wrapper/status-right.sh)'"
```

Add the following settings to `~/bashrc`:

```bash
PS1="$PS1"'$([ -n "$TMUX" ] && tmux setenv TMUXPWD_$(tmux display -p "#D" | tr -d %) "$PWD")'
```

Or add the following settings to `~/.zshrc`:

```bash
PROMPT="$PROMPT"'$([ -n "$TMUX" ] && tmux setenv TMUXPWD_$(tmux display -p "#D" | tr -d %) "$PWD")'
```

If you need more information, please refer to `sample.tmux.conf`.


If you disable tmux-powerline, set `DISABLE_TMUX_POWERLINE` and export it
before tmux starts up.
```bash
DISABLE_TMUX_POWERLINE=true
export DISABLE_TMUX_POWERLINE
```

If you disable tmux-powerline while tmux is running, you can run
```console
$ tmux setenv -ug DISABLE_TMUX_POWERLINE
```

and then reload tmux configurations.

### Customize
Copy configuration file `.tmux-powerlinerc` to `~/` or `~/.tmux/`.
Edit the contents to suit your environment.

```console
$ cp ~/.tmux/tmux-powerline-wrapper/.tmux-powerlinerc ~/
$ vim ~/.tmux-powerlinerc
```
`~/.tmux-powerlinerc` and `~/.tmux/.tmux-powerlinerc` will be automatically load.

And copy status-line setting file `.tmux-powerline-status-left.sh` and
`.tmux-powerline-status-right.sh` to `~/` or `~/.tmux/`.
Edit the two status scripts to suit you needs.
A number of common segments are included that covers some general functions
in `tmux-powerline/segments` or `tmux-powerline-wrapper/segments`.

It should be quite easy to add you own segments.

```console
$ cp ~/.tmux/tmux-powerline-wrapper/.tmux-powerline-status-left.sh ~/
$ cp ~/.tmux/tmux-powerline-wrapper/.tmux-powerline-status-right.sh ~/
$ vim ~/.tmux-powerline-status-*.sh
```

`~/.tmux-powerline-status-\*.sh` and `~/.tmux/.tmux-powerline-status-\*.sh` will be automatically load.
You need to set nothing in your `.tmux.conf`

See also
---------------

* 日本語の解説:[カッコイイtmuxを目指して!! - tmux-powerlineを改良したよ - よんちゅBlog](http://yonchu.hatenablog.com/entry/2012/11/16/100458)
