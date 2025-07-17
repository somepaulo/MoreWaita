scalable_legacy_iconsdir = join_paths(scalable_iconsdir, 'legacy')

regular_files = [
    # DO NOT REMOVE: Begining of regular segment
    'accessories-character-map.svg',
    'accessories-text-editor.svg',
    'applications-accessories.svg',
    'applications-all.svg',
    'applications-development.svg',
    'applications-education.svg',
    'applications-electronics.svg',
    'applications-engineering.svg',
    'applications-games.svg',
    'applications-graphics.svg',
    'applications-internet.svg',
    'applications-multimedia.svg',
    'applications-office.svg',
    'applications-other.svg',
    'applications-science.svg',
    'applications-system.svg',
    'applications-utilities.svg',
    'applications-webapps.svg',
    'package.svg',
    'preferences-desktop-accessibility.svg',
    'preferences-desktop-locale.svg',
    'preferences-desktop-screensaver.svg',
    'preferences-desktop-theme.svg',
    'preferences-desktop-wallpaper.svg',
    'preferences-desktop.svg',
    'preferences-system-network.svg',
    'software-sources.svg',
    'synaptic.svg',
    'system-file-manager.svg',
    'system-lock-screen.svg',
    'system-log-out.svg',
    'system-reboot.svg',
    'system-shutdown.svg',
    'system-software-install.svg',
    'system-software-update.svg',
    'system-suspend-hibernate.svg',
    'system-suspend.svg',
    'system-users.svg',
    # DO NOT REMOVE: End of regular segment
]

link_files = {
    # DO NOT REMOVE: Begining of link segment
    'software-sources.svg': [
        'x-system-software-sources.svg',
    ],
    'system-software-install.svg': [
        'system-software-installer.svg',
    ],
    'applications-system.svg': [
        'preferences-system.svg',
    ],
    'applications-all.svg': [
        'gnome-applications.svg',
    ],
    'preferences-desktop-locale.svg': [
        'applications-education-language.svg',
    ],
    # DO NOT REMOVE: End of link segment
}

install_data(regular_files, install_dir: scalable_legacy_iconsdir)

foreach dest_file, link_files_for_dest : link_files
    foreach link_file : link_files_for_dest
        install_symlink(link_file, install_dir: scalable_legacy_iconsdir, pointing_to: dest_file)
    endforeach
endforeach
