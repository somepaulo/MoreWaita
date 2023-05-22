#!/bin/python

import os
import argparse
from graphlib import TopologicalSorter
import re

parser = argparse.ArgumentParser(description='Update regular files and groups of links in meson.build file.')
parser.add_argument('readdir', metavar='readdir', type=str, nargs='?', default='.',)
args = parser.parse_args()

# read all files from directory
files = sorted(os.listdir(args.readdir))
files.remove('meson.build')

# filter out regular files
regular_files = [
    "    '{}',\n".format(file)
    for file in files
    if os.path.isfile(os.path.join(args.readdir, file)) and not os.path.islink(os.path.join(args.readdir, file))
]

# filter out link files
link_files = [
    file
    for file in files
    if os.path.isfile(os.path.join(args.readdir, file)) and os.path.islink(os.path.join(args.readdir, file))
]

# dictonary for grouping files and their links
groups = {}

# for each link find a file it links to and add it to that group
for link in link_files:
    groups.setdefault(os.readlink(os.path.join(args.readdir, link)), []).append(link)

# sort groups topologically
# that way chain links will be created in correct order
ts = TopologicalSorter(groups)
# get a list of tuples so the order is maintained when pairing sorted keys with their values
sorted_groups = [(file, groups[file]) for file in ts.static_order() if file in groups]

# iterate over all groups
# reverse the order of groups so first the dependencies are created
new_link_lines = []
for file, links in reversed(sorted_groups):
    # print a comment line indicating a group of links (file that they link to)
    new_link_lines.append("    '{}': [\n".format(file))
    for link in links:
        # print a line for each link file
        new_link_lines.append("        '{}',\n".format(link))
    new_link_lines.append("    ],\n")

reg_lines = None
link_lines = None

# match lines in regular and link segments
r = re.compile(r'^((?:.*\n)+    # DO NOT REMOVE: Begining of regular segment\n)((?:.+\n)*)(    # DO NOT REMOVE: End of regular segment\n(?:.*\n)+    # DO NOT REMOVE: Begining of link segment\n)((?:.+\n)*)(    # DO NOT REMOVE: End of link segment\n(?:.*\n)+)$', re.MULTILINE)

with open(os.path.join(args.readdir, 'meson.build'), 'r') as f:
    match_lines = r.match(''.join(f.readlines()))

if match_lines:
    with open(os.path.join(args.readdir, 'meson.build'), 'w') as f:
        f.write(match_lines.group(1))
        f.write(''.join(regular_files))
        f.write(match_lines.group(3))
        f.write(''.join(new_link_lines))
        f.write(match_lines.group(5))
