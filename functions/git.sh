# git [c]ommit [a]nd [p]ush
# note cap -n is the same as git commit -m ... && git push
cap () {
    case $# in
        1) git commit -am "$1";;
        2) [ "$1" = '-n' ] || return 1
           git commit -m "$2";;
        *) return 2;;
    esac
    git push
}
