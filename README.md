# MoreWaita
An Adwaita styled theme with extra icons for popular apps to complement Gnome Shell's original icons.
The purpose of this theme is to provide a consistent look and feel with Gnome Shell's design.

This theme is built upon the work of Gnome's Adwaita designers, Gnome Circle apps' developers and Papirus theme designers with a touch of tinkering from myself here and there. The theme covers the most frequently installed dependency GUI apps that almost nobody uses (like Avahi browsers, QT Designer, Software token, etc.) as well as some of the most popular apps people really do install and use. MoreWaita does not override any Adwaita icons, nor any Gnome Circle apps icons, nor icons that generally fit into the Adwaita paradigm. Overall, this theme is way less all-inclusive than many others, but suggestions, requests, PRs and contributions are welcome.

This theme is built and tested against vanilla Gnome on Arch Linux. If an icon is in the theme, but is not applying to your app, open an issue and mention the icon name referenced in your app's `.desktop` file.

## Installation

#### Download the theme
`git clone https://github.com/somepaulo/MoreWaita.git`

#### Install for local user
`cp -r MoreWaita/ ~/.local/share/icons/`

#### Install system-wide
`sudo cp -r MoreWaita/ /usr/share/icons/`

#### Arch Linux
[AUR package (versioned)](https://aur.archlinux.org/packages/morewaita)

[AUR package (git)](https://aur.archlinux.org/packages/morewaita-git)

#### Fedora Linux
[COPR repository](https://copr.fedorainfracloud.org/coprs/dusansimic/themes)

Package name is `morewaita-icon-theme`.

## Activation
Either use the `Tweaks` app to choose and activate the icon theme or run the following command:

`gsettings set org.gnome.desktop.interface icon-theme 'MoreWaita'`

#### Troubleshooting
If the theme doesn't apply try the following command:

##### For local installation
`gtk-update-icon-cache -f -t ~/.local/share/icons/MoreWaita && gtk4-update-icon-cache -f -t ~/.local/share/icons/MoreWaita && xdg-desktop-menu forceupdate`

##### For system-wide installation
`sudo gtk-update-icon-cache -f -t /usr/share/icons/MoreWaita && sudo gtk4-update-icon-cache -f -t /usr/share/icons/MoreWaita && xdg-desktop-menu forceupdate`

## The icons
![MoreWaita_42-1-0](https://user-images.githubusercontent.com/15643750/198497442-3f82c125-0a81-4c0c-8563-54a12f5efb81.png)
