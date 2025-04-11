scalable_legacy_iconsdir = join_paths(symbolic_iconsdir, 'legacy')

regular_files = [
    # DO NOT REMOVE: Begining of regular segment
    'applications-accessories-symbolic.svg',
    'applications-all-symbolic.svg',
    'applications-development-symbolic.svg',
    'applications-electronics-symbolic.svg',
    'applications-internet-symbolic.svg',
    'applications-other-symbolic.svg',
    'package-symbolic.svg',
    'preferences-desktop-symbolic.svg',
    'preferences-desktop-theme-symbolic.svg',
    'preferences-system-network-symbolic.svg',
    # DO NOT REMOVE: End of regular segment
]

link_files = {
    # DO NOT REMOVE: Begining of link segment
    'applications-all-symbolic.svg': [
        'gnome-applications-symbolic.svg',
    ],
    '../places/folder-work-symbolic.svg': [
        'applications-office-symbolic.svg',
    ],
    '../places/folder-school-symbolic.svg': [
        'applications-education-symbolic.svg',
    ],
    # DO NOT REMOVE: End of link segment
}

install_data(regular_files, install_dir: scalable_legacy_iconsdir)

foreach dest_file, link_files_for_dest : link_files
    foreach link_file : link_files_for_dest
        install_symlink(link_file, install_dir: scalable_legacy_iconsdir, pointing_to: dest_file)
    endforeach
endforeach
