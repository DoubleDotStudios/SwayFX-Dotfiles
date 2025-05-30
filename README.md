# SwayFX Dotfiles

> ![NOTE]
> A more in depth file on my dotfiles can be read [here](./misc/Details.md).
> I also have a [video]() on it, however, half of the video uses my old waybar setup.

These are my SwayFX dotfiles. I think they're near perfect and it's been my best ricing experience.

***

## Usage
### Dependencies
- SwayFX
- SwayNC
- Waybar
- Eww
- Kitty
- Yazi
- Rofi Wayland

### Install
You can either install using the [script](#script-install) I made or [manually](#manual-install).

#### Script Install
> [!IMPORTANT]
> Please **DO NOT** blindly trust scripts from the internet.
> Feel free to read over the [script](./install.sh), there are comments there detailing what the script does.
```console
curl -s [url]/install.sh | bash -s
```

#### Manual Install
1. Clone the repo:
```console
git clone --depth=1 https://github.com/DoubleDotStudios/SwayFX-Dotfiles.git
```

2. Move the configs into `~/.config`, backup your own configs:
```console
mv ./config/* ~/.config/
```

3. Move the scripts into `~/.local/bin`:
```console
mv ./bin/* ~/.local/bin/
```

4. Move the rofi themes and scripts to `~/.local/share/rofi`:
```console
mv ./rofi/* ~/.local/share/rofi/
```

5. Move the `.zshrc` to `~`, backup your own `.zshrc`:
```console
mv ./zshrc ~/.zshrc
```

6. Install [SolarVim](https://github.com/DoubleDotStudios/SolarVim) (optional)
