#!/bin/sh

for arg in $@
do
    regex=^"$arg"
    # $arg can have a "/" at the end if we press tab
    # to complete, so remove if it does
    program=$(echo $regex | sed --expression='s/\/*$//')
    pretty_program=$(echo $program | sed --expression='s/^\^//')
    src="$(grep "$program" db | awk '{print $2}' | envsubst)"
    dest=$(grep "$program" db | awk '{print $3}' | envsubst)

    if [ -n "$dest" ] && [ -n "$dest" ]; then
        echo "Installing [$pretty_program] $src -> $dest"
        ln -sf $src $dest
    fi
done

help() {
    echo "Usage: ./install.sh [program list]"
    echo "Programs:"
    echo "\t\"Program\" means the program's dotfiles you want to install."
    echo "\tSee the first column of the \"db\" file."
}

while getopts ":h" option; do
   case $option in
      h)
         help
         exit;;
   esac
done

