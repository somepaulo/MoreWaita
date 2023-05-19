symbolic_places_iconsdir = join_paths(places_iconsdir, 'symbolic')

regular_files = [
    'folder-books-legacy-symbolic.svg',
    'folder-books-symbolic.svg',
    'folder-code-legacy-symbolic.svg',
    'folder-code-symbolic.svg',
    'folder-cplusplus-symbolic.svg',
    'folder-csharp-symbolic.svg',
    'folder-c-symbolic.svg',
    'folder-dropbox-symbolic.svg',
    'folder-games-legacy-symbolic.svg',
    'folder-games-symbolic.svg',
    'folder-git-legacy-symbolic.svg',
    'folder-git-symbolic.svg',
    'folder-godot-symbolic.svg',
    'folder-go-symbolic.svg',
    'folder-java-symbolic.svg',
    'folder-lua-symbolic.svg',
    'folder-nextcloud-legacy-symbolic.svg',
    'folder-nextcloud-symbolic.svg',
    'folder-private-legacy-symbolic.svg',
    'folder-private-symbolic.svg',
    'folder-projects-legacy-symbolic.svg',
    'folder-projects-symbolic.svg',
    'folder-python-symbolic.svg',
    'folder-ruby-symbolic.svg',
    'folder-rust-symbolic.svg',
    'folder-syncthing-legacy-symbolic.svg',
    'folder-syncthing-symbolic.svg',
    'folder-vala-symbolic.svg',
]

link_files = {
}

install_data(regular_files, install_dir: symbolic_places_iconsdir)

foreach dest_file, link_files_for_dest : link_files
    foreach link_file : link_files_for_dest
        install_symlink(link_file, install_dir: symbolic_places_iconsdir, pointing_to: dest_file)
    endforeach
endforeach
