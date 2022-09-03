# Install

[release page]: https://github.com/EpokTarren/themes/releases/latest
[source]: https://github.com/EpokTarren/themes

You will need to get the alacritty theme either from the [release page],
alternatively build from [source](requires node.js and yarn).
Then copy or symlink into either the linux or windows folder depending on what you're using.

## Linux

```sh
# if you want a symlink
ln -s ~/.config/alacritty linux

# if you prefer a copy
cp ~/.config/alacritty linux
```

## Windows

You will need to replace `Tarren` in both windows files with your username.

```powershell
# if you want a symlink
mklink /J %APPDATA%\alacritty windows

# if you prefer a copy
copy /Y %APPDATA%\alacritty windows
```
