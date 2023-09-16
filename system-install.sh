#!/bin/bash

sudo mkdir -p /usr/share/icons/MoreWaitaPlus/
shopt -s extglob
sudo cp -avu "$(pwd -P)"/!(*.build|*.sh|*.py|*.md|.git|.github|.gitignore|_dev) /usr/share/icons/MoreWaitaPlus/
shopt -u extglob
sudo find /usr/share/icons/MoreWaitaPlus/ -name '*.build' -type f -delete
sudo gtk-update-icon-cache -f -t /usr/share/icons/MoreWaitaPlus && xdg-desktop-menu forceupdate
