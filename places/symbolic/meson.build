symbolic_places_iconsdir = join_paths(places_iconsdir, 'symbolic')

regular_files = [
    'folder-code-symbolic.svg',
    'folder-git-symbolic.svg',
    'folder-nextcloud-symbolic.svg',
    'folder-projects-symbolic.svg',
    'folder-syncthing-symbolic.svg',
]

link_files = {
}

install_data(regular_files, install_dir: symbolic_places_iconsdir)

foreach dest_file, link_files_for_dest : link_files
    foreach link_file : link_files_for_dest
        install_symlink(link_file, install_dir: symbolic_places_iconsdir, pointing_to: dest_file)
    endforeach
endforeach
