#!/bin/bash

is_user_root ()
{
		[ "$(id -u)" -eq 0 ]
}

check_read_only() {
    local dir="${1}"
    if touch "${dir}/testfilemorewaita" 2>/dev/null; then
        rm "${dir}/testfilemorewaita"
	return 1
    else
        return 0
    fi
}

if is_user_root; then
    if check_read_only /usr; then
        THEMEDIR="/usr/local/share/icons/MoreWaita/"
    else
        THEMEDIR="/usr/share/icons/MoreWaita/"
    fi
else
    THEMEDIR="${HOME}/.local/share/icons/MoreWaita/"
fi

mkdir -p ${THEMEDIR}
shopt -s extglob
cp -avu "$(pwd -P)"/!(*.build|*.sh|*.py|*.md|.git|.github|.gitignore|_dev) ${THEMEDIR}
shopt -u extglob
find ${THEMEDIR} -name '*.build' -type f -delete
gtk-update-icon-cache -f -t ${THEMEDIR} && xdg-desktop-menu forceupdate

