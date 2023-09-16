#!/bin/sh

mkdir -p ~/.local/share/icons/MoreWaitaPlus/
shopt -s extglob
cp -avu "$(pwd -P)"/!(*.build|*.sh|*.py|*.md|.git|.github|.gitignore|_dev) ~/.local/share/icons/MoreWaitaPlus/
shopt -u extglob
find ~/.local/share/icons/MoreWaitaPlus/ -name '*.build' -type f -delete
gtk-update-icon-cache -f -t ~/.local/share/icons/MoreWaitaPlus && xdg-desktop-menu forceupdate

