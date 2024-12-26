# Setting the $PATH environment variable.

# PATH variable
export PATH="$HOME/OneDrive - UNSW/UNSW/Courses/Year 5 - 2023/cs6771/remark:$PATH"
export PATH="$HOME/OneDrive - UNSW/UNSW/Courses/Year 5 - 2023/cs6771/remark/1:$PATH"
export PATH="$HOME/OneDrive - UNSW/UNSW/Courses/Year 5 - 2023/seng3011:$PATH"

export PATH="$HOME/bin:$PATH"

# homebrew
export PATH="/opt/homebrew/bin:$PATH" 

export PATH="$SCRIPTS:$PATH"
export PATH="$HOME/cpp-scripts/bin:$PATH"

# git-filter-repo
export PATH="$HOME/git-filter-repo:$PATH"

# ensure current folder gets priority for scripts
export PATH="$PATH:."

# get PATH to all external programs
launchctl setenv PATH $PATH

# remove duplicates in PATH
typeset -U path
