scalable_mimes_iconsdir = join_paths(mimes_iconsdir, 'scalable')

regular_files = [
    'android-package-archive.svg',
    'application-json.svg',
    'application-octet-stream.svg',
    'application-toml.svg',
    'application-vnd.comicbook+zip.svg',
    'application-vnd.flatpak.svg',
    'application-vnd.snap.svg',
    'application-x-audacity-project.svg',
    'application-x-cd-image.svg',
    'application-x-deb.svg',
    'application-x-godot-project.svg',
    'application-x-iso9600-appimage.svg',
    'application-x-java-archive.svg',
    'application-xml.svg',
    'application-x-perl.svg',
    'application-x-php.svg',
    'application-x-python-bytecode.svg',
    'application-x-rpm.svg',
    'application-x-yaml.svg',
    'text-css.svg',
    'text-rust.svg',
    'text-x-chdr.svg',
    'text-x-cpphdr.svg',
    'text-x-cpp.svg',
    'text-x-csharp.svg',
    'text-x-c.svg',
    'text-x-go.svg',
    'text-x-javascript.svg',
    'text-x-java.svg',
    'text-x-lua.svg',
    'text-x-markdown.svg',
    'text-x-python.svg',
    'text-x-ruby.svg',
    'text-x-tex.svg',
    'text-x-vala.svg',
    'virtualbox-hdd.svg',
    'virtualbox-ova.svg',
    'virtualbox-ovf.svg',
    'virtualbox-vbox-extpack.svg',
    'virtualbox-vbox.svg',
    'virtualbox-vdi.svg',
    'virtualbox-vhd.svg',
    'virtualbox-vmdk.svg',
]

link_files = {
    'android-package-archive.svg': [
        'application-vnd.android.package-archive.svg',
        'application-apk.svg',
    ],
    'application-octet-stream.svg': [
        'application-x-firmware.svg',
        'application-x-msdownload.svg',
        'text-x-hex.svg',
    ],
    'application-vnd.comicbook+zip.svg': [
        'application-x-cbz.svg',
        'application-x-cba.svg',
        'application-vnd.comicbook-rar.svg',
        'application-x-cbt.svg',
        'application-x-cbr.svg',
        'application-x-cb7.svg',
    ],
    'application-x-cd-image.svg': [
        'application-x-raw-disk-image.svg',
        'application-x-apple-diskimage.svg',
        'nero-disk-image.svg',
        'application-vnd.squashfs.svg',
        'gnome-mime-application-x-nero-disk-image.svg',
    ],
    'application-x-deb.svg': [
        'application-vnd.debian.binary-package.svg',
    ],
    'application-x-godot-project.svg': [
        'application-x-gdscript.svg',
        'application-x-godot-resource.svg',
        'application-x-godot-shader.svg',
        'application-x-godot-scene.svg',
    ],
    'application-x-iso9600-appimage.svg': [
        'application-vnd.appimage.svg',
    ],
    'application-x-java-archive.svg': [
        'application-x-jar.svg',
    ],
    'application-x-php.svg': [
        'text-x-php.svg',
    ],
    'application-x-rpm.svg': [
        'application-x-source-rpm.svg',
    ],
    'application-xml.svg': [
        'application-rss+xml.svg',
        'application-metalink4+xml.svg',
        'text-rdf+xml.svg',
        'application-atom+xml.svg',
        'application-xslt+xml.svg',
        'text-xml.svg',
        'application-owl+xml.svg',
        'application-metalink+xml.svg',
    ],
    'text-css.svg': [
        'text-less.svg',
        'text-x-less.svg',
        'text-x-sass.svg',
        'text-x-css.svg',
        'text-x-scss.svg',
    ],
    'text-x-c.svg': [
        'text-x-csrc.svg',
    ],
    'text-x-cpp.svg': [
        'text-x-c++src.svg',
        'text-x-cppsrc.svg',
        'text-x-c++.svg',
    ],
    'text-x-cpphdr.svg': [
        'text-x-c++hdr.svg',
    ],
    'text-x-java.svg': [
        'application-x-java.svg',
        'application-x-java-applet.svg',
        'application-java.svg',
        'text-x-java-source.svg',
    ],
    'text-x-javascript.svg': [
        'application-javascript.svg',
        'text-javascript.svg',
        'application-x-javascript.svg',
    ],
    'text-x-markdown.svg': [
        'text-markdown.svg',
    ],
    'text-x-python.svg': [
        'text-x-python3.svg',
    ],
    'text-x-ruby.svg': [
        'application-x-ruby.svg',
        'text-ruby.svg',
    ],
    'text-x-tex.svg': [
        'text-x-texinfo.svg',
    ],
    'virtualbox-hdd.svg': [
        'application-x-virtualbox-hdd.svg',
    ],
    'virtualbox-ova.svg': [
        'application-x-virtualbox-ova.svg',
    ],
    'virtualbox-ovf.svg': [
        'application-x-virtualbox-ovf.svg',
    ],
    'virtualbox-vbox-extpack.svg': [
        'application-x-virtualbox-vbox-extpack.svg',
    ],
    'virtualbox-vbox.svg': [
        'application-x-virtualbox-vbox.svg',
    ],
    'virtualbox-vdi.svg': [
        'application-x-virtualbox-vdi.svg',
    ],
    'virtualbox-vhd.svg': [
        'application-x-virtualbox-vhd.svg',
    ],
    'virtualbox-vmdk.svg': [
        'application-x-virtualbox-vmdk.svg',
    ],
}

install_data(regular_files, install_dir: scalable_mimes_iconsdir)

foreach dest_file, link_files_for_dest : link_files
    foreach link_file : link_files_for_dest
        install_symlink(link_file, install_dir: scalable_mimes_iconsdir, pointing_to: dest_file)
    endforeach
endforeach
