scalable_panel_iconsdir = join_paths(panel_iconsdir, 'scalable')

regular_files = [
    'skype-indicator.svg',
    'skype-status-away-notification.svg',
    'skype-status-away.svg',
    'skype-status-connected-notification.svg',
    'skype-status-connecting-0.svg',
    'skype-status-connecting-1.svg',
    'skype-status-disturb-notification.svg',
    'skype-status-disturb.svg',
    'skype-status-hidden-notification.svg',
    'skype-status-hidden.svg',
    'skype-status-offline-notification.svg',
    'skype-status-offline.svg',
    'TeamViewer-indicator-away.svg',
    'TeamViewer-indicator-busy.svg',
    'TeamViewer-indicator-connected.svg',
    'TeamViewer-indicator-error.svg',
    'TeamViewer-indicator-offline.svg',
    'TeamViewer-indicator.svg',
    'vlc-panel.svg',
    'Zoom-indicator.svg',
]

link_files = {
}

install_data(regular_files, install_dir: scalable_panel_iconsdir)

foreach dest_file, link_files_for_dest : link_files
    foreach link_file : link_files_for_dest
        install_symlink(link_file, install_dir: scalable_panel_iconsdir, pointing_to: dest_file)
    endforeach
endforeach
