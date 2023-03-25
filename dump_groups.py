#!/bin/python

# Utility script used for grouping links with their destination files
# It helps with initial creation of file list for meson build spec

import os
import sys
from graphlib import TopologicalSorter

# take reading dir argument (where to look for icons)
readdir = sys.argv[1] if len(sys.argv) > 1 else '.'

# read all files from directory (expect there are only links to icons)
files = os.listdir(readdir)

# filter out link files
link_files = [
    file
    for file in files
    if os.path.isfile(os.path.join(readdir, file)) and os.path.islink(os.path.join(readdir, file))
]

# dictonary for grouping files and their links
groups = {}

# for each link find a file it links to and add it to that group
for link in link_files:
    groups.setdefault(os.readlink(os.path.join(readdir, link)), []).append(link)

# sort groups topologically
# that way chain links will be created in correct order
ts = TopologicalSorter(groups)
# get a list of tuples so the order is maintained when pairing sorted keys with their values
sorted_groups = [(file, groups[file]) for file in ts.static_order() if file in groups]

# iterate over all groups
# reverse the order of groups so first the dependencies are created
for file, links in reversed(sorted_groups):
    # print a comment line indicating a group of links (file that they link to)
    print('\'{}\': ['.format(file))
    for link in links:
        # print a line for each link file
        print('    \'{}\','.format(link))
    print('],')
