#!/usr/bin/env bash
# ======================================================================
# Install dot-files
# ======================================================================

set -e

# ======================================================================
# Function definitions
# ======================================================================

usage () {
    cat 1>&2 <<EOF
USAGE
    Simply run with './install.sh' to install dot-files.

SYNOPSIS
    ./install.sh [-h] [restore]

DESCRIPTION
    This script installs dot-files to the home directory by creating
    symbolic links.

    If 'restore' argument is specified, then it will unlink dotfiles
    and restore the original files.

OPTIONS
    -h
        Show help (this text)
EOF
}

link_file () {
    local source
    local target

    source="$1"
    target="$2"

    if [ -L "${target}" ]
    then
        unlink "$target"
    fi

    if [ -e "${target}" ] && [ ! -L "${target}" ]
    then
        # Back-up the dot-file if already exists
        mv "$target" "$target.df.bak"
    fi

    ln -sf "${source}" "${target}"
}

link_dotfile () {
    local source
    local target

    source="${PWD}/$1"
    target="${HOME}/${1/#_/.}"

    link_file "${source}" "${target}"
}

unlink_file () {
    local source
    local target

    source="$1"
    target="$2"

    if [ -e "${target}.df.bak" ] && [ -L "${target}" ]
    then
        unlink "${target}"
        mv "${target}.df.bak" "$target"
    fi
}

unlink_dotfile () {
    local source
    local target

    source="${PWD}/$1"
    target="${HOME}/${1/#_/.}"

    unlink_file "${source}" "${target}"
}

# ======================================================================
# Execution starts here
# ======================================================================

# Process options
while getopts h opt
do
    case $opt in
        h) usage; exit 0;;
        \?) usage; exit 1;;
    esac
done
shift `expr $OPTIND - 1`

config_source="${PWD}/config"
config_target="${HOME}/.config"

if [ "$1" = "restore" ]
then
    for df in _*
    do
        unlink_dotfile "${df}"
    done

    # Restore files under ~/.config
    if [ -d "$config_source" ]
    then
        for df in `ls "$config_source"`
        do
            unlink_file "${config_source}/${df}" "${config_target}/${df}"
        done
    fi

    exit
else
    for df in _*
    do
        link_dotfile "${df}"
    done

    # Install config/ to ~/.config
    if [ -d "$config_source" ]
    then
        for df in `ls "$config_source"`
        do
            link_file "${config_source}/${df}" "${config_target}/${df}"
        done
    fi
fi
