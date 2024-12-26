#!/usr/bin/env dash

printf '# zshrc installed by %s\n' "$(realpath "$0")" > ~/.zshrc
printf '\n' >> ~/.zshrc

[ -d ~/.aliases ] && rm -rf ~/.aliases
mkdir ~/.aliases
cd aliases
for rc in *
do
    ln -s "$(realpath "$rc")" "$HOME/.aliases/$rc"
    printf '. "%s"\n' "$HOME/.aliases/$rc" >> ~/.zshrc
done
cd ..
