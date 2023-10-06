#!/bin/bash

is_user_root ()
{
		[ "$(id -u)" -eq 0 ]
}

if is_user_root; then
		THEMEDIR=/usr/share/icons/MoreWaita/
else
		THEMEDIR=$HOME/.local/share/icons/MoreWaita/
fi

mkdir -p $THEMEDIR
shopt -s extglob
cp -avu "$(pwd -P)"/!(*.build|*.sh|*.py|*.md|.git|.github|.gitignore|_dev) $THEMEDIR
shopt -u extglob
find $THEMEDIR -name '*.build' -type f -delete
gtk-update-icon-cache -f -t $THEMEDIR && xdg-desktop-menu forceupdate

