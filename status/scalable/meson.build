scalable_status_iconsdir = join_paths(status_iconsdir, 'scalable')

regular_files = [
    'pamac-tray-no-update.svg',
    'pamac-tray-update.svg',
]

link_files = {
}

install_data(regular_files, install_dir: scalable_status_iconsdir)

foreach dest_file, link_files_for_dest : link_files
    foreach link_file : link_files_for_dest
        install_symlink(link_file, install_dir: scalable_status_iconsdir, pointing_to: dest_file)
    endforeach
endforeach
