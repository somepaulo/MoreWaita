scalable_places_iconsdir = join_paths(places_iconsdir, 'scalable')

regular_files = [
    # DO NOT REMOVE: Begining of regular segment
    'accessories-text-editor.svg',
    'applications-accessories.svg',
    'applications-development.svg',
    'applications-education.svg',
    'applications-games.svg',
    'applications-graphics.svg',
    'applications-internet.svg',
    'applications-multimedia.svg',
    'applications-office.svg',
    'applications-other.svg',
    'applications-science.svg',
    'applications-system.svg',
    'preferences-desktop-accessibility.svg',
    'preferences-desktop-locale.svg',
    'preferences-desktop.svg',
    'system-file-manager.svg',
    'system-lock-screen.svg',
    'system-log-out.svg',
    'system-reboot.svg',
    'system-shutdown.svg',
    'system-suspend-hibernate.svg',
    'system-suspend.svg',
    'system-users.svg',
    # DO NOT REMOVE: End of regular segment
]

link_files = {
    # DO NOT REMOVE: Begining of link segment
    'applications-system.svg': [
        'preferences-system.svg',
    ],
    # DO NOT REMOVE: End of link segment
}

install_data(regular_files, install_dir: scalable_places_iconsdir)

foreach dest_file, link_files_for_dest : link_files
    foreach link_file : link_files_for_dest
        install_symlink(link_file, install_dir: scalable_places_iconsdir, pointing_to: dest_file)
    endforeach
endforeach
