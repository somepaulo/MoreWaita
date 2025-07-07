#!/usr/bin/env bash

# --------------------------------------------------------------------------------------------------
#
# Automate change of folder icons using MoreWaita icon theme with gio command.
#
# - Useful after reinstalling your system.
# - Working with: nautilus, nemo.
# - Not working with: dolphin, thunar.
#
# Using gio to set a custom icon:
#       gio set $HOME/Documents/C metadata::custom-icon \
#       	file:///usr/share/icons/MoreWaita/places/scalable/folder-c.svg
#
# Then you can confirm the change showing all the attributes with the command:
#       gio info $HOME/Documents/C
# Or showing only custom-icon attribute:
#       gio info --attributes="metadata::custom-icon" $HOME/Documents/C
# To delete the custom-icon attribute use -d flag:
#       gio set $HOME/Documents/C metadata::custom-icon -d
#
# Dependencies:
# 	gio
# 	MoreWaita
#
# --------------------------------------------------------------------------------------------------

GREEN='\033[0;32m'
YELLOW='\033[0;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

if [ -d "/var/usrlocal/share/icons/MoreWaita" ]; then
	MOREWAITA_DIR="/var/usrlocal/share/icons/MoreWaita/scalable/places"
elif [ -d "/usr/share/icons/MoreWaita" ]; then
	MOREWAITA_DIR="/usr/share/icons/MoreWaita/scalable/places"
else
	MOREWAITA_DIR="${XDG_DATA_HOME:-$HOME/.local/share}/icons/MoreWaita/scalable/places"
fi

function get_icon_file_path() {
	local icon
	# get basename, lowercase & remove leading dot
	icon=$(basename "$1") && icon=${icon,,} && icon=${icon#.}
	echo "$MOREWAITA_DIR/folder-${icon}.svg"
}

function ci() {              # Simplify command
	if [[ "$2" == "-d" ]]; then # Delete custom-icon attribute
		gio set "$1" metadata::custom-icon -d
		echo -e "${GREEN}$1 metadata::custom-icon attribute deleted${NC}"
	else # Assign value to custom-icon attribute
		gio set "$1" metadata::custom-icon file://"$2"
		echo -e "${GREEN}$1 metadata::custom-icon attribute updated to '$(basename "$2")' ${NC}"
	fi
}

function custom-icon() {
	# NOTE:
	# - First argument ($1) is the folder path, ex: /home/user/C
	# - Second argument (optional) ($2) is the icon to be used, ex: c
	# 	Ex: custom-icon /home/user/C c
	# - If there is no second argument it will try to take the basename of the folder path
	#   and look for a match on the MOREWAITA_DIR path.
	# 	Ex: custom-icon /home/user/C

	# If delete flag is set, delete icon from folder and return
	[ "$del" -eq 1 ] && [ -d "$1" ] && ci "$1" -d && return

	# Else, attempt to assign the icon according to the arguments
	if [ $# -eq 1 ] || { [ $# -eq 2 ] && [ -z "$2" ]; }; then # Icon has the same name as the folder
		icon=$(get_icon_file_path "$1")
	elif [ $# -eq 2 ]; then # Icon and folder names differ
		icon=$(get_icon_file_path "$2")
	fi
	[ ! -d "$1" ] && echo -e "${YELLOW}$1 folder does not exist ${NC}"
	[ -d "$1" ] && [ -f "$icon" ] && ci "$1" "$icon"
	[ -d "$1" ] && [ ! -f "$icon" ] && echo -e "${RED}$icon does not exist ${NC}"
}

function custom_directories() {
	# NOTE: Example 1: direct use of custom-icon function
	custom-icon "$HOME/Arduino"
	custom-icon "$HOME/OpenSCAD"
	custom-icon "$HOME/Coding" code
	custom-icon "$HOME/Applications" appimage

	# NOTE: Example 2: loop against a list of directories to be used as arguments of custom-icon
	# The list of folders is a combination of:
	# - "folder" because the "place icon" uses the same name as the basename of the folder
	# - "folder,icon" because folders don't match the icon name, icon is explicitly set
	for i in .local FreeCAD git KiCad Projects School Translation Work \
		Applications,appimage AUR,archlinux Coding,code; do
		IFS="," read -r folder icon <<<"$i"
		custom-icon "$HOME/$folder" "${icon}"
	done

	# NOTE: Example 3: loop against a list of only directories, no need to use second argument
	for i in archlinux codeberg FreeCAD github gitlab gnome; do custom-icon "$HOME/git/$i"; done

	# NOTE: Example 4: find all '.git' directories and assign the git icon
	find "$HOME/git" -maxdepth 3 -type d -name ".git" | while IFS= read -r dir; do
		custom-icon "$dir"
	done

	# NOTE: Example 5: find all directories related to translation and assign the translation icon
	find "$HOME/git" -type d -name .git -prune -o \
		-type d \( -name "*ranslation*" -o -name i18n -o -name l10n \) -print |
		while IFS= read -r dir; do custom-icon "$dir" translation; done

	# NOTE: Example 6: assign icons to subdirectories on data and config directories for which there
	# is an icon on MoreWaita theme
	for directory in "${XDG_DATA_HOME:-$HOME/.local/share}" "${XDG_CONFIG_HOME:-$HOME/.config}"; do
		find "$directory" -maxdepth 1 -type d | while IFS= read -r dir; do
			dir0=$dir && dir=${dir##*/} && dir=${dir,,} # basename and lowercase
			[ -f "$MOREWAITA_DIR/folder-${dir}.svg" ] && custom-icon "$dir0"
		done
	done
}

function help() {
	echo -e "\nDescription :"
	echo -e "\tThis script changes folder icons."
	echo -e "\nArguments :"
	echo -e "\t<DIR> <ICON> set an icon to a directory"
	echo -e "\t-c           set custom-icon attribute for the hard-coded folders"
	echo -e "\t-d           delete custom-icon attribute for the hard-coded folders"
	echo -e "\t-h           show help"
}

# --------------------------------------------------------------------------------------------------
# Main function

del=0
if [ $# -eq 1 ]; then
	if [[ "$1" == "-c" ]]; then
		echo -e "\nThe icons folder is: $MOREWAITA_DIR\n"
		custom_directories
	elif [[ "$1" == "-d" ]]; then
		del=1
		custom_directories
	else
		help
	fi
elif [ $# -eq 2 ]; then
	custom-icon "$1" "$2"
else
	help
fi
