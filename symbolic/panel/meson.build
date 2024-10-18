scalable_panel_iconsdir = join_paths(panel_iconsdir, 'symbolic')

regular_files = [
    # DO NOT REMOVE: Begining of regular segment
    'TeamViewer-indicator-away.svg',
    'TeamViewer-indicator-busy.svg',
    'TeamViewer-indicator-connected.svg',
    'TeamViewer-indicator-error.svg',
    'TeamViewer-indicator-offline.svg',
    'TeamViewer-indicator.svg',
    'Zoom-indicator.svg',
    'bitwarden-tray.svg',
    'firewall-applet-error.svg',
    'firewall-applet-panic.svg',
    'jdownloader-indicator.svg',
    'keepassxc-locked.svg',
    'keepassxc-unlocked.svg',
    'pamac-tray-no-update.svg',
    'pamac-tray-update.svg',
    'protonvpn-tray.svg',
    'protonvpngui-connected.svg',
    'protonvpngui-disconnected.svg',
    'protonvpngui-no-network.svg',
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
    'user-available.svg',
    'user-away.svg',
    'user-busy.svg',
    'user-invisible.svg',
    'user-offline.svg',
    'user-status-new.svg',
    'user-status-pending.svg',
    'vlc-panel.svg',
    # DO NOT REMOVE: End of regular segment
]

link_files = {
    # DO NOT REMOVE: Begining of link segment
    'user-status-new.svg': [
        'pidgin-tray-xa.svg',
    ],
    'user-status-pending.svg': [
        'pidgin-tray-pending.svg',
    ],
    'user-offline.svg': [
        'pidgin-tray-offline.svg',
    ],
    'user-invisible.svg': [
        'pidgin-tray-invisible.svg',
    ],
    'user-busy.svg': [
        'pidgin-tray-busy.svg',
    ],
    'user-away.svg': [
        'pidgin-tray-away.svg',
    ],
    'user-available.svg': [
        'pidgin-tray-available.svg',
        'pidgin-tray-connect.svg',
    ],
    'keepassxc-unlocked.svg': [
        'org.keepassxc.KeePassXC-unlocked.svg',
    ],
    'keepassxc-locked.svg': [
        'org.keepassxc.KeePassXC-locked.svg',
    ],
    # DO NOT REMOVE: End of link segment
}

install_data(regular_files, install_dir: scalable_panel_iconsdir)

foreach dest_file, link_files_for_dest : link_files
    foreach link_file : link_files_for_dest
        install_symlink(link_file, install_dir: scalable_panel_iconsdir, pointing_to: dest_file)
    endforeach
endforeach
