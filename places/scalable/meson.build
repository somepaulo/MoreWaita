scalable_places_iconsdir = join_paths(places_iconsdir, 'scalable')

regular_files = [
    'folder-books-legacy.svg',
    'folder-books.svg',
    'folder-c-legacy.svg',
    'folder-code-legacy.svg',
    'folder-code.svg',
    'folder-cplusplus-legacy.svg',
    'folder-cplusplus.svg',
    'folder-csharp-legacy.svg',
    'folder-csharp.svg',
    'folder-c.svg',
    'folder-dropbox-legacy.svg',
    'folder-dropbox.svg',
    'folder-games-legacy.svg',
    'folder-games.svg',
    'folder-git-legacy.svg',
    'folder-git.svg',
    'folder-godot-legacy.svg',
    'folder-godot.svg',
    'folder-go-legacy.svg',
    'folder-go.svg',
    'folder-java-legacy.svg',
    'folder-java.svg',
    'folder-lua-legacy.svg',
    'folder-lua.svg',
    'folder-nextcloud-legacy.svg',
    'folder-nextcloud.svg',
    'folder-private-legacy.svg',
    'folder-private.svg',
    'folder-projects-legacy.svg',
    'folder-projects.svg',
    'folder-python-legacy.svg',
    'folder-python.svg',
    'folder-ruby-legacy.svg',
    'folder-ruby.svg',
    'folder-rust-legacy.svg',
    'folder-rust.svg',
    'folder-syncthing-legacy.svg',
    'folder-syncthing.svg',
    'folder-vala-legacy.svg',
    'folder-vala.svg',
]

link_files = {
}

install_data(regular_files, install_dir: scalable_places_iconsdir)

foreach dest_file, link_files_for_dest : link_files
    foreach link_file : link_files_for_dest
        install_symlink(link_file, install_dir: scalable_places_iconsdir, pointing_to: dest_file)
    endforeach
endforeach
