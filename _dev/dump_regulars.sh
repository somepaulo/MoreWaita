#!/bin/sh

usage() {
    echo "usage: $0 [directory]"
    echo "  directory: directory to read from (default: current directory)"
}

# specify a directory to read from (needs the trailing slash)
readdir="./"

if [ "$#" -ge 1 ]; then
    if [ "$1" = "-h" ]; then
        usage
        exit 0
    fi

    if [ -d "$1" ]; then
        readdir="$1"
    else
        echo "error: $1 is not a directory"
        usage
        exit 1
    fi
fi

# calculate the number of bytes to cut from
readdirlen="$((${#readdir} + 1))"

# find all non-link files in readdir, strip the prefix path, sort them and add quotes and commas
#find "$readdir" -type f | cut -c "$readdirlen-" | grep -v 'meson.build' | sort | sed "s~\(.*\)~    '\1',~"
regulars=$(find "$readdir" -type f | cut -c "$readdirlen-" | grep -v 'meson.build' | sort | sed "s~\(.*\)~    '\1',~")
awk -v r="$regulars" -v f=1 '/^regular_files = [$/{print $0 "\n" r; f=0}/^]$/{f=1} f' $readdir/meson.build
