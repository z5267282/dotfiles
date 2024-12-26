#!/usr/bin/env dash

# For controlling Shell history.

# https://www.soberkoder.com/better-zsh-history/
export HISTFILE=~/.zsh_history
export HISTFILESIZE=1000000000
export HISTSIZE=1000000000
setopt INC_APPEND_HISTORY

# https://www.youtube.com/watch?v=AVXYq8aL47Q&t=863s
# this only works if you run
# history -t $HISTTIMEFORMAT
# https://unix.stackexchange.com/questions/688993/z-shell-history-doesnt-show-timestamps-with-histtimeformat
export HISTTIMEFORMAT="%Y-%m-%d %T"
setopt EXTENDED_HISTORY
setopt HIST_IGNORE_ALL_DUPS
