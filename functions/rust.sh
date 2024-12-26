# [r]ustc, [r]un then [d]elete executables
rrd() {
    case "$1" in
        *.rs) ;;
        *) return 10 ;;
    esac
    
    rustc "$1" || return 20
    binary="${1%.rs}"
    shift
    ./"$binary" "$@"
    rm "$binary"
}
