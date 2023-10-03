project('morewaita',
        version : '45',
  meson_version : '>= 0.61.0'
)

iconsdir = join_paths(get_option('prefix'), get_option('datadir'), 'icons', 'MoreWaita')

icon_dirs = ['apps', 'mimes', 'panel', 'places']

foreach icon_dir : icon_dirs
    subdir(icon_dir)
    install_symlink('@0@@2x'.format(icon_dir), install_dir: iconsdir, pointing_to: icon_dir)
endforeach

install_data('index.theme', install_dir: iconsdir)
