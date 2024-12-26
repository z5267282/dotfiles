# Miscellaneous scripts that are more difficult to categorise

# copy name of file into clipboard
name() {
    [ $# -eq 1 ] || return 10
    file="$1"
    [ -e "$file" ] || return 20

    printf '%s' "$file" | pbcopy
}

# move all desktop pngs to given sprint
sprint() {
    mv ~/Desktop/*.png "$HOME/OneDrive - UNSW/UNSW/Courses/Year 5 - 2023/seng3011/sprints/$SPRINT"
}

# [c]hange foler into newly made [dir]ectory
cdir () {
    mkdir "$1" && cd "$1"
}

# [len]gth of arg
len () {
    [ $# -eq 1 ] && echo "${#1}"
}
