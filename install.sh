#!/usr/bin/env dash

printf '# zshrc installed by %s\n' "$(realpath "$0")" > ~/.zshrc
printf '\n' >> ~/.zshrc

link_folder() {
    name="$1"
    description="$2"

    printf '# %s\n' "$description" >> ~/.zshrc

    [ -d  "$HOME/.$name" ] && rm -rf "$HOME/.$name" 
    mkdir "$HOME/.$name" 
    cd "$name"
    for rc in *
    do
        ln -s "$(realpath "$rc")" "$HOME/.$name/$rc"
        printf '. "%s"\n' "$HOME/.$name/$rc" >> ~/.zshrc
    done
    cd ..
    printf '\n' >> ~/.zshrc
}

# link all folders
link_folder aliases 'shell aliases'
link_folder env 'setting environment variables'

# link stand-alone configuration files
for singlerc in tmux.conf vimrc
do
    ln -s "$(realpath "$rc")" "$HOME/.$singlerc"
    printf '. "%s"\n' "$HOME/.$singlerc" >> ~/.zshrc
done
