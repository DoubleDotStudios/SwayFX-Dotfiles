# SwayFX Dotfiles

> [!NOTE]
> A more in depth file on my dotfiles can be read [here](./misc/README.md).
> I also have a [video]() on it, however, half of the video uses my old waybar setup.

These are my SwayFX dotfiles. I think they're near perfect and it's been my best ricing experience.

***

## Screenshots
![Blank workspace](./Blank.png)
*Blank workspace*
![SwayNC and Calendar](./Populated.png)
*SwayNC and Calendar*
![Kitty and Yazi](./Kitty-Yazi.png)
*Kitty and Yazi*
![SolarVim](./SolarVim.png)
*Solarvim*
![Fastfetch](./Fetch.png)
*Fastfetch*
![Librewolf](./Librewolf.png)
*Librewolf*

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

***

## Credit
#### Catppuccin
[Sway theme](https://catppuccin.com/ports/?q=i3%2Fsway), [SwayNC](https://catppuccin.com/ports/?q=swaync), [Yazi](https://catppuccin.com/ports/?q=yazi)

#### saimoonedits
[EWW bar](https://github.com/Saimoomedits/eww-widgets) used as inspiration for Waybar, [EWW calendar](https://github.com/Saimoomedits/eww-widgets)

#### FGD
[Catppuccin Mokka Tree wallpaper](https://gitlab.com/garuda-linux/themes-and-settings/settings/garuda-mokka/-/blob/main/wallpapers/Mokka-tree.jpg?ref_type=heads)
