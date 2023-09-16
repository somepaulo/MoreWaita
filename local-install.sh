#!/bin/sh

mkdir -p ~/.local/share/icons/MoreWaita/
shopt -s extglob
cp -avu "$(pwd -P)"/!(*.build|*.sh|*.py|*.md|.git|.github|.gitignore|_dev) ~/.local/share/icons/MoreWaita/
shopt -u extglob
find ~/.local/share/icons/MoreWaita/ -name '*.build' -type f -delete
gtk-update-icon-cache -f -t ~/.local/share/icons/MoreWaita && xdg-desktop-menu forceupdate

