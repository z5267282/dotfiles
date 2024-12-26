. aliasrc
. functionrc
. envrc

[ -f ~/.secrets ] && . ~/.secrets

# cse mount
. ~/.cse-mount

# cpp
export cpp=cs6771exam@cse.unsw.edu.au

export MVE_CONFIGS="$HOME/projects/mve-configs/mac"

export SCRIPTS="$HOME/scripts"
export LSCOLORS='gxfxcxdxbxegedabagacad'
#                1122334455667788991011

export PS2='> '

# history
# # https://www.soberkoder.com/better-zsh-history/
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

PROMPT="%(?.%F{green}√%f.%F{red}X%f -> %F{red}%?%f) %F{39}%1~%f : "

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

setopt nullglob

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/sunny/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/sunny/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/sunny/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/sunny/google-cloud-sdk/completion.zsh.inc'; fi

true
