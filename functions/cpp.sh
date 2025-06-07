# [f]ast g[++]
f++ () {
    [ $# -eq 1 ] || return 1
    [ -f "$1" ] || return 2
    [ "${1:(-4)}" = '.cpp' ] || return 3
    g++ -std=c++20 "$1" -o "${1%.cpp}"
}
