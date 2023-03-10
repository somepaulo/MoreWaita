#!/bin/sh

# specify a directory to read from (needs the trailing slash)
readdir="./"
if [ -n "$1" ]; then
    readdir="$1"
fi

# calculate the number of bytes to cut from
readdirlen="$((${#readdir} + 1))"

# find all non-link files in readdir, strip the prefix path, sort them and add quotes and commas
find "$readdir" -type f | cut -c "$readdirlen-" | grep -v 'meson.build' | sort | sed "s~\(.*\)~'\1',~"