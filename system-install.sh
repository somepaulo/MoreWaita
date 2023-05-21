#!/bin/sh

sudo rsync -av --exclude='*.build' --exclude='*.sh' --exclude='*.py' --exclude='*.md' --exclude=.git --exclude=.github --exclude=.gitignore --exclude=dev "$(pwd -P)" /usr/share/icons/
sudo gtk-update-icon-cache -f -t /usr/share/icons/MoreWaita && xdg-desktop-menu forceupdate
