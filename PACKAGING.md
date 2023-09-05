# MoreWaita packaging documentation

This document is meant for project and distro package maintainers to ease their workflow by
explaining how meson build definitions are prepared. If you'd like to contribute to MoreWaita, you
are probably interested in [Prepare Meson build definitions](#prepare-meson-build-definitions)
section. If you'd like to maintain a distribution package for the MoreWaita icon pack, you're
probably more interested in [Meson build definitions usage](#meson-build-definitions-usage) section.

## Meson build system

For packaging, we use the [Meson build system](https://mesonbuild.com) as it's fairly common in both
compiled projects like apps and scss themes and non compiled like for example Pyhton applications
or icon themes. Since Meson has features for both compiling and installing files, we just use the
ones for installing so essentialy for us, it's a standardized installation script.

## Prepare Meson build definitions

Since we use a lot of symbolic links to support some applications that might have multiple names and
ids depending on the installation source and method, we need a way to keep those links as is, not
just install multiple copies of the same icon.

Meson currently doesn't support that transparently with already available `install_data` function
(but logs seem to suggest that might happen in the future), we are using `install_symlink` function.
That however requires us to track for each release which links point to which files and if there are
some links that point to other links, they need to be topographically sorted so there would be no
errors when linking.

That is done with `dump_regulars.sh` and `dump_groups.py` scripts from the `_dev` folder. The former prints an
alphabetically sorted list of all regular (non link) files in the specified directory and the latter
prints groups (a Meson dictionary) of files where the key is a regular or a link file and value is a
list of links that point to the corresponding file in the key. Keys can also be links since a link
may point to a file which is also a link.

Once some new icons are added, files renamed or links are changed, new list of regular and link
files must be generated for that icons directory. To do that, maintainer needs to dump a list of
regular files and groups of link files for the directory containing the changes.

```sh
$ ./_dev/dump_regulars.sh apps/scalable/ # mind the trainling slash, it's required
$ ./_dev/dump_groups.py apps/scalable # trailing slash is not required here
```

The output of these commands needs to be put into the array of regular files and dictionary of link
files in the respective Meson build specification (in this example, that's
[apps/scalable/meson.build](./apps/scalable/meson.build)).

The process needs to be repeated for all changed directories.

That way we install all regular files into a target directory and for all links we install them
pointing to the corresponding destination file.

Before each release, MoreWaita maintainers are expected to replace the list of regular files in each
icon directory with a fresh list that's printed from `dump_regulars.sh` script and replace the
groups of link files in each icon directory with a fresh list that's printed from `dump_groups.py`
script.

## Meson build definitions usage

For the usage of meson scripts, please reference to the distributions packaging guidelines and
instructions. Any exceptions for a specific distribution will be noted here.
