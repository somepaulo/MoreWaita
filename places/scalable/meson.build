scalable_places_iconsdir = join_paths(places_iconsdir, 'scalable')

regular_files = [
    # DO NOT REMOVE: Begining of regular segment
    'folder-arduino-legacy.svg',
    'folder-arduino.svg',
    'folder-backup-legacy.svg',
    'folder-backup.svg',
    'folder-bitwig-legacy.svg',
    'folder-bitwig.svg',
    'folder-books-legacy.svg',
    'folder-books.svg',
    'folder-c-legacy.svg',
    'folder-c.svg',
    'folder-code-legacy.svg',
    'folder-code.svg',
    'folder-codeberg-legacy.svg',
    'folder-codeberg.svg',
    'folder-cplusplus-legacy.svg',
    'folder-cplusplus.svg',
    'folder-csharp-legacy.svg',
    'folder-csharp.svg',
    'folder-dropbox-legacy.svg',
    'folder-dropbox.svg',
    'folder-freecad-legacy.svg',
    'folder-freecad.svg',
    'folder-games-legacy.svg',
    'folder-games.svg',
    'folder-git-legacy.svg',
    'folder-git.svg',
    'folder-github-legacy.svg',
    'folder-github.svg',
    'folder-gitlab-legacy.svg',
    'folder-gitlab.svg',
    'folder-gnome-legacy.svg',
    'folder-gnome.svg',
    'folder-go-legacy.svg',
    'folder-go.svg',
    'folder-godot-legacy.svg',
    'folder-godot.svg',
    'folder-java-legacy.svg',
    'folder-java.svg',
    'folder-kde-legacy.svg',
    'folder-kde.svg',
    'folder-kicad-legacy.svg',
    'folder-kicad.svg',
    'folder-lua-legacy.svg',
    'folder-lua.svg',
    'folder-money-legacy.svg',
    'folder-money.svg',
    'folder-nextcloud-legacy.svg',
    'folder-nextcloud.svg',
    'folder-openscad-legacy.svg',
    'folder-openscad.svg',
    'folder-private-legacy.svg',
    'folder-private.svg',
    'folder-projects-legacy.svg',
    'folder-projects.svg',
    'folder-python-legacy.svg',
    'folder-python.svg',
    'folder-r-legacy.svg',
    'folder-r.svg',
    'folder-ruby-legacy.svg',
    'folder-ruby.svg',
    'folder-rust-legacy.svg',
    'folder-rust.svg',
    'folder-syncthing-legacy.svg',
    'folder-syncthing.svg',
    'folder-temp-legacy.svg',
    'folder-temp.svg',
    'folder-vala-legacy.svg',
    'folder-vala.svg',
    # DO NOT REMOVE: End of regular segment
]

link_files = {
    # DO NOT REMOVE: Begining of link segment
    'folder-bitwig.svg': [
        'com.bitwig.BitwigStudio.application-bitwig-project-folder.svg',
    ],
    'folder-bitwig-legacy.svg': [
        'com.bitwig.BitwigStudio.application-bitwig-project-folder-legacy.svg',
    ],
    # DO NOT REMOVE: End of link segment
}

install_data(regular_files, install_dir: scalable_places_iconsdir)

foreach dest_file, link_files_for_dest : link_files
    foreach link_file : link_files_for_dest
        install_symlink(link_file, install_dir: scalable_places_iconsdir, pointing_to: dest_file)
    endforeach
endforeach
