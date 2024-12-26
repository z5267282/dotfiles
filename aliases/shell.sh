# Various miscellaneous Shell-command shorthands.

# ls 
alias ls='ls -G'
alias l='ls -1'

# open related
alias o='open'
alias go="open -a 'Google Chrome'"

# stop creating .DS_Stores rather than adding them to .gitignores
alias rds='find . -name .DS_Store -delete'

alias grep='grep --colour=auto'

# leak checking: https://stackoverflow.com/questions/65931093/valgrind-and-macos-big-sur
alias leak='leaks -atExit --'

# cases
alias lc='tr A-Z a-z'
alias uc='tr a-z A-Z'

# index
alias index='grep -E "^#"'

# misc
alias xx='exit 0'
alias dode='code .'
alias t=true
alias quote='mv ~/Desktop/*.png ~"/OneDrive - UNSW/Pictures/quotes"'
alias pp='pwd | tr -d "\n" | pbcopy'
alias x1='chmod +x'
