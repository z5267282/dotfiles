# Functions relating to the deletion of files.

# [s]afe rm
srm() {
    [ $# -eq 1 ] || return 10
    mv "$1" ~/.Trash
}

# [r]emo[v]e all [d]ot [u]nderscore files ._*
# this is a function as it is a bit annoying to preserve the * character in an alias
rmdu() {
    find . -name '._*' -delete
}

# [r]e[m]ove all files in ~/[d]ownloads
# place the file .rmdkeep to turn this off
rmd () {
    if [ -e ~/Downloads/.rmdkeep ]
    then
        echo "rmd has been disabled due to the presence of .rmdkeep"
        return 0
    fi
    perl -MFile::Path -e '(-d) ? rmtree $_ : unlink $_ foreach(glob "~/Downloads/*")'
}
