scalable_places_iconsdir = join_paths(places_iconsdir, 'scalable')

regular_files = [
    'folder-code.svg',
    'folder-games.svg',
    'folder-git.svg',
    'folder-godot.svg',
    'folder-nextcloud.svg',
    'folder-projects.svg',
    'folder-syncthing.svg',
]

link_files = {
}

install_data(regular_files, install_dir: scalable_places_iconsdir)

foreach dest_file, link_files_for_dest : link_files
    foreach link_file : link_files_for_dest
        install_symlink(link_file, install_dir: scalable_places_iconsdir, pointing_to: dest_file)
    endforeach
endforeach
