project('morewaita', version: '50', meson_version: '>= 0.61.0')

iconsdir = join_paths(get_option('prefix'), get_option('datadir'), 'icons', 'MoreWaita')

subdir('scalable')
subdir('symbolic')
subdir('16x16')

install_data('index.theme', install_dir: iconsdir)
install_data('AUTHORS', install_dir: iconsdir)
install_data('LICENSE', install_dir: iconsdir)
