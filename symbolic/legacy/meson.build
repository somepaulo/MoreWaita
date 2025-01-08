scalable_panel_iconsdir = join_paths(panel_iconsdir, 'symbolic')

regular_files = [
    # DO NOT REMOVE: Begining of regular segment
    'applications-accessories-symbolic.svg',
    'applications-development-symbolic.svg',
    'applications-internet-symbolic.svg',
    'applications-other-symbolic.svg',
    'preferences-desktop-symbolic.svg',
    # DO NOT REMOVE: End of regular segment
]

link_files = {
    # DO NOT REMOVE: Begining of link segment
    '../places/folder-work-symbolic.svg': [
        'applications-office-symbolic.svg',
    ],
    '../places/folder-school-symbolic.svg': [
        'applications-education-symbolic.svg',
    ],
    # DO NOT REMOVE: End of link segment
}

install_data(regular_files, install_dir: scalable_panel_iconsdir)

foreach dest_file, link_files_for_dest : link_files
    foreach link_file : link_files_for_dest
        install_symlink(link_file, install_dir: scalable_panel_iconsdir, pointing_to: dest_file)
    endforeach
endforeach
