# For controlling the terminal display.

# for ls command in zsh terminal shell
# it is LSCOLORS on Mac
# https://unix.stackexchange.com/questions/2897/clicolor-and-ls-colors-in-bash
export LSCOLORS='gxfxcxdxbxegedabagacad'
#                1122334455667788991011

# for tree terminal command
# format here: https://medium.com/@vabhinav991222/customizing-file-and-folder-colors-in-linux-terminal-c09a69eb882a
# only directories are important
export LS_COLORS="di=01;34:"

export PS2='> '

export PROMPT="%(?.%F{green}√%f.%F{red}X%f -> %F{red}%?%f) %F{39}%1~%f : "

# make man pager better with bat
export MANPAGER=bat

