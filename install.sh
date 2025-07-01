#!/usr/bin/env bash

is_user_root ()
{
		[ "$(id -u)" -eq 0 ]
}

THEMEDIR="${THEMEDIR:-}"

if [ -z "$THEMEDIR" ]; then
    if is_user_root; then
        if [ ! -w "/usr/" ]; then
            THEMEDIR="/usr/local/share/icons/MoreWaita/"
        else
            THEMEDIR="/usr/share/icons/MoreWaita/"
        fi
    else
        THEMEDIR="${HOME}/.local/share/icons/MoreWaita/"
    fi
fi
SCRIPTDIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

mkdir -p "${THEMEDIR}"
shopt -s extglob
cp -avu "${SCRIPTDIR}"/!(*.build|*.sh|*.py|*.md|.git|.github|.gitignore|_dev) "${THEMEDIR}"
shopt -u extglob
find "${THEMEDIR}" -name '*.build' -type f -delete
gtk-update-icon-cache -f -t "${THEMEDIR}" && xdg-desktop-menu forceupdate
