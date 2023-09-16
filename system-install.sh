#!/bin/bash

sudo mkdir -p /usr/share/icons/MoreWaita/
shopt -s extglob
sudo cp -avu "$(pwd -P)"/!(*.build|*.sh|*.py|*.md|.git|.github|.gitignore|_dev) /usr/share/icons/MoreWaita/
shopt -u extglob
sudo find /usr/share/icons/MoreWaita/ -name '*.build' -type f -delete
sudo gtk-update-icon-cache -f -t /usr/share/icons/MoreWaita && xdg-desktop-menu forceupdate
