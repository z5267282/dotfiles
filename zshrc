# cse mount
. ~/.cse-mount

# aliases
[ -f aliasrc ] && . aliasrc
# [ -f "$HOME/.functionrc" ] && . "$HOME/.functionrc"

# cpp
export cpp=cs6771exam@cse.unsw.edu.au

export MVE_CONFIGS="$HOME/projects/mve-configs/mac"

# thesis
export BE_PORT=5000

# seng3011
export S3_API_USER='h16a-tango'
export S3_API_PASS='ready-to-tango'

export SPRINT=3

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

# get PATH to all external programs
launchctl setenv PATH $PATH

setopt nullglob

# PATH variable
export PATH="$HOME/OneDrive - UNSW/UNSW/Courses/Year 5 - 2023/cs6771/remark:$PATH"
export PATH="$HOME/OneDrive - UNSW/UNSW/Courses/Year 5 - 2023/cs6771/remark/1:$PATH"
export PATH="$HOME/OneDrive - UNSW/UNSW/Courses/Year 5 - 2023/seng3011:$PATH"

export PATH="/opt/homebrew/opt/python@3.10/bin:$PATH"


# latex
export PATH="$HOME/bin:$PATH"

# homebrew
export PATH="/opt/homebrew/bin:$PATH" 

export PATH="$SCRIPTS:$PATH"
export PATH="$HOME/cpp-scripts/bin:$PATH"

# git-filter-repo
export PATH="$HOME/git-filter-repo:$PATH"

# ensure current folder gets priority for scripts
export PATH="$PATH:."

# remove duplicates in PATH
typeset -U path

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/sunny/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/sunny/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/sunny/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/sunny/google-cloud-sdk/completion.zsh.inc'; fi

true
