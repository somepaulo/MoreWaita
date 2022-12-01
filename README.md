# MoreWaita
An Adwaita styled theme with extra icons for popular apps to complement Gnome Shell's original icons.
The purpose of this theme is to provide a consistent look and feel with Gnome Shell's design.

This theme is built upon the work of Gnome's Adwaita designers, Gnome Circle apps' developers and Papirus theme designers with a touch of tinkering from myself and [@dusansimic](https://github.com/dusansimic) here and there. The theme covers the most frequently installed dependency GUI apps that almost nobody uses (like Avahi browsers, QT Designer, Software token, etc.) as well as some of the most popular apps people really do install and use.

The purpose of MoreWaita is to add to Adwaita, not modify it, and to do roughly what Breeze does for KDE. This theme does not override any Adwaita icons, nor any Gnome Circle apps icons, nor icons that generally fit into the Adwaita paradigm (like Transmission GTK). Currently, this theme is way less all-inclusive than many others, but the aim is to be on par with Papirus some day. However, this is (mostly) a one-man hobby effort for now, so suggestions, requests, PRs and contributions are very welcome.

For most icons, especially branded ones, the general idea is to stay as close as possible to the original icons – to the point of using them in full – and giving them the distinct Adwaita 'perspective' and general flatness. One thing this theme deviates from is the Gnome colour palette in brand icons – MoreWaita keeps the brand colours.   

This theme is built and tested against vanilla Gnome on Arch Linux. If an icon is in the theme, but is not applying to your app, please open an issue and mention the icon name referenced in your app's `.desktop` file.

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
`gtk-update-icon-cache -f -t ~/.local/share/icons/MoreWaita && xdg-desktop-menu forceupdate`

##### For system-wide installation
`sudo gtk-update-icon-cache -f -t /usr/share/icons/MoreWaita && xdg-desktop-menu forceupdate`

## The icons
![MoreWaita](https://user-images.githubusercontent.com/15643750/205176736-2ebfaed4-d679-41ff-b4a9-6a9fd6fbdd24.png)
