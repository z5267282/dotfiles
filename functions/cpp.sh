# [f]ast g[++]
f++ () {
    [ $# -eq 1 ] || return 1
    [ -f "$1" ] || return 2
    [ "${1:(-4)}" = '.cpp' ] || return 3
    # g++ -Wall -std=c++11 "$1" -o "${1%.cpp}"
    g++ -std=c++11 "$1" -o "${1%.cpp}"
}
