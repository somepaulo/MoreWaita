> [!NOTE]
> v46 was skipped due to many reasons. The project is still maintained. v47 coming out early October. Stay tuned.

![showcase](https://github.com/user-attachments/assets/8344cd6a-f508-423e-a4d4-8bf9b9cf40a3)

## Introduction

An expanded Adwaita-styled companion icon theme, built mostly upon the work of GNOME's Adwaita designers and GNOME Circle apps' developers, as well as Papirus theme designers, with a touch of tinkering from myself, [@dusansimic](https://github.com/dusansimic), [@julianfairfax](https://github.com/julianfairfax) and others.

## Installation

#### Manual installation & update
```sh
# local user installation
git clone https://github.com/somepaulo/MoreWaita.git && cd MoreWaita && ./install.sh
```
```sh
# system-wide installation
git clone https://github.com/somepaulo/MoreWaita.git && cd MoreWaita && sudo ./install.sh
```

##### Uninstall
Simply chose another theme and then delete the entire `MoreWaita` folder from either `/usr/share/icons/` or `~/.local/share/icons/` depending on your installation choice above. 

#### Arch Linux
- git : `pacman -S morewaita-git`
- versioned : `pacman -S morewaita`
- [Julian's repository](https://gitlab.com/julianfairfax/package-repo#how-to-add-repository-for-arch-based-linux-distributions)

#### Fedora Linux
Install via [@dusansimic's COPR](https://copr.fedorainfracloud.org/coprs/dusansimic/themes):

```sh
# enable dusansimic's COPR
dnf copr enable dusansimic/themes

# install the package
dnf install morewaita-icon-theme
```

#### Ubuntu/Debian Linux

[Julian's repository](https://gitlab.com/julianfairfax/package-repo#how-to-add-repository-for-debian-based-linux-distributions)

## Activation
Either use the `Tweaks` app to choose and activate the icon theme or run the following command:

```sh
gsettings set org.gnome.desktop.interface icon-theme 'MoreWaita'
```

## Using custom folder icons
1. Open Files (Nautilus).
2. Find the folder you wish to change the icon for.
3. Right click on the folder.
4. Click on `Properties`.
5. Click on the folder image.
6. Navigate to the MoreWaita installation folder and into the `places` subfolder (typically `/usr/share/icons/MoreWaita/places/scalable/`).
7. Select the icon you wish to use.
8. Click `Open`.
9. Follow the same procedure to revert the icon. Just click `Revert` instead of selecting a new icon in step 7.
![change_folder_icon](https://github.com/somepaulo/MoreWaita/assets/15643750/05e88cbc-3c77-4e1b-a8bd-3e15b84972fa)

## Troubleshooting

#### Theme doesn't apply
If the theme doesn't apply try the following command:

```sh
# local user installation
gtk-update-icon-cache -f -t ~/.local/share/icons/MoreWaita && xdg-desktop-menu forceupdate
```
```sh
# system-wide installation
sudo gtk-update-icon-cache -f -t /usr/share/icons/MoreWaita && xdg-desktop-menu forceupdate
```

#### Some apps don't get themed
If the theme applies, but a particular app doesn't get themed (and its icon is in MoreWaita), check its respective `.desktop` file. Some apps have icon paths hardcoded into their `.desktop` file or have a different icon name set there or no icon set at all. This can differ between distros.

If you happen to have such apps, you'll need to copy their `.desktop` files into `~/.local/share/applications` and modify them there providing the correct icon name. Alternatively, use a menu editor like `MenuLibre` or `Alacarte`.

If your app's `.desktop` file references an icon name not present in MoreWaita's `apps/scalable` folder, please report it in an issue providing the icon name from your system. 
