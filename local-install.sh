#!/bin/sh

rsync -av --exclude='*.build' --exclude='*.sh' --exclude='*.py' --exclude='*.md' --exclude=.git --exclude=.github --exclude=.gitignore --exclude=dev "$(pwd -P)" ~/.local/share/icons/
gtk-update-icon-cache -f -t ~/.local/share/icons/MoreWaita && xdg-desktop-menu forceupdate
