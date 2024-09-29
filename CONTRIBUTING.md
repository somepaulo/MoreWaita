# Contributing
Thank you for showing your interest in contributing! Contributions are most welcome. Anything including small fixes is greatly appreciated.

> [!NOTE]
> Please keep your new icons consistent with the existing base and follow the industry's best practices.  

#### Here are seven basic rules that will help get your pull request merged:

**1. Follow the icon sizes and placements from existing icons**  
Generally, the best way to create new icons is to modify existing ones of a similar shape and colour.

**2. Always clean up and save as 'Plain SVG' in Inkscape**  
Inkscape usually saves into its own _'Inkscape SVG'_ format with additional data, unneeded in the icon. So always do a _'Clean Up Document'_ action from the File menu and _'Save As'_ -> _'Plain SVG'_. 

**3. One icon file per app**  
Frequently, app icons have different names used on different systems and/or app versions. So the general rule is to create one actual `.svg` icon with either the simplest or most frequently used name and then create symlinks to it with all the alternative names. Check the existing icons for examples of how things are done there. For a source of possible app names check the [Papirus icon theme](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme/).  
The symlinks have to be created from within the same directory as the actual `.svg` file without using any paths to avoid hardcoding them, like so:
```sh
ln -s original-name.svg alternativeName.svg
```

**4. Every app icon has to have a symbolic icon**  
The symbolic icons have to be named exactly as the full-colour ones, adding `-symbolic` to the end of the name before the `.svg` extension.
Symlinks for alternative names have to be created in the same way as with apps.

**5. Every folder icon has to have a legacy folder icon and a symbolic icon**  
The icons used on the modern and legacy full-color folder icons may or may not differ. They are used as symbolic icons for the respective folders. When the icon is the same for both folder versions, use a symbolic icon file for the modern version and a symlink to it for the legacy version.

**6. Always update `meson.build` files before committing**  
When you're done with your changes, run the dev script from within the theme's root directory once for every folder you've added new icons or made changes to, like so:
```sh
./_dev/dump_groups.py apps/scalable
./_dev/dump_groups.py apps/symbolic
```

**7. Use separate pull requests**  
Please don't combine several different icons in the same pull request. One thing wrong ruins the whole PR. You can include an app's mimetype icons with the app icon, but keep things separate otherwise. One app/folder/mimetype icon with its symbolic icon and their respective symlinks per pull request.
