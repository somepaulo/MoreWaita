scalable_places_iconsdir = join_paths(places_iconsdir, 'scalable')

regular_files = [
    # DO NOT REMOVE: Begining of regular segment
    'audio-card.svg',
    'cpu.svg',
    'drive-harddisk-solidstate.svg',
    'memory.svg',
    'network-card.svg',
    # DO NOT REMOVE: End of regular segment
]

link_files = {
    # DO NOT REMOVE: Begining of link segment
    'audio-card.svg': [
        'soundcard.svg',
        'yast_soundcard.svg',
    ],
    '../apps/jockey.svg': [
        'device_pci.svg',
    ],
    'memory.svg': [
        'device_mem.svg',
        'gnome-dev-memory.svg',
        'vmware-memory.svg',
    ],
    'cpu.svg': [
        'device_cpu.svg',
        'processor.svg',
    ],
    '../apps/one.alynx.showmethekey.svg': [
        'blueman-keyboard.svg',
        'cinnamon-virtual-keyboard.svg',
        'gnome-dev-keyboard.svg',
        'keyboard.svg',
    ],
    # DO NOT REMOVE: End of link segment
}

install_data(regular_files, install_dir: scalable_places_iconsdir)

foreach dest_file, link_files_for_dest : link_files
    foreach link_file : link_files_for_dest
        install_symlink(link_file, install_dir: scalable_places_iconsdir, pointing_to: dest_file)
    endforeach
endforeach
