scalable_panel_iconsdir = join_paths(panel_iconsdir, 'symbolic')

regular_files = [
    'bitwarden-tray.svg',
    'firewall-applet-error.svg',
    'firewall-applet-panic.svg',
    'jdownloader-indicator.svg',
    'pamac-tray-no-update.svg',
    'pamac-tray-update.svg',
    'protonvpngui-connected.svg',
    'protonvpngui-disconnected.svg',
    'protonvpngui-no-network.svg',
    'protonvpn-tray.svg',
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
    'strawberry-panel.svg',
    'TeamViewer-indicator-away.svg',
    'TeamViewer-indicator-busy.svg',
    'TeamViewer-indicator-connected.svg',
    'TeamViewer-indicator-error.svg',
    'TeamViewer-indicator-offline.svg',
    'TeamViewer-indicator.svg',
    'user-available.svg',
    'user-away.svg',
    'user-busy.svg',
    'user-invisible.svg',
    'user-offline.svg',
    'user-status-new.svg',
    'user-status-pending.svg',
    'vlc-panel.svg',
    'Zoom-indicator.svg',
]

link_files = {
    'user-invisible.svg': [
        'pidgin-tray-invisible.svg',
    ],
    'user-status-new.svg': [
        'pidgin-tray-xa.svg',
    ],
    'user-away.svg': [
        'pidgin-tray-away.svg',
    ],
    'user-busy.svg': [
        'pidgin-tray-busy.svg',
    ],
    'user-available.svg': [
        'pidgin-tray-connect.svg',
        'pidgin-tray-available.svg',
    ],
    'user-offline.svg': [
        'pidgin-tray-offline.svg',
    ],
    'user-status-pending.svg': [
        'pidgin-tray-pending.svg',
    ],
}

install_data(regular_files, install_dir: scalable_panel_iconsdir)

foreach dest_file, link_files_for_dest : link_files
    foreach link_file : link_files_for_dest
        install_symlink(link_file, install_dir: scalable_panel_iconsdir, pointing_to: dest_file)
    endforeach
endforeach
