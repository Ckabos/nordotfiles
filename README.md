# Nordotfiles

[![Screenshot](https://i.postimg.cc/yNbHCj3z/screenshot.png)](https://postimg.cc/p9z7DDB0)
[![Screenshot](https://i.postimg.cc/7hPM13Xf/screenshot1.png)](https://postimg.cc/wyPmgsCp)
[![Screenshot](https://i.postimg.cc/Wz4gq2bZ/screenshot2.png)](https://postimg.cc/S2wJwb9Q)
[![Screenshot](https://i.postimg.cc/MKv1WKL2/screenshot3.png)](https://postimg.cc/ZCzWHZZV)
[![Screenshot](https://i.postimg.cc/cJbrkQsv/screenshot4.png)](https://postimg.cc/bG1ysSSP)

---

## Dependencies

Here are the main dependencies required to use these dotfiles:

- **`Alacritty`**: Terminal emulator.
- **`Polybar`**: Status bar.
- **`Rofi`**: Application launcher and bluetooth menu.
- **`MPD`**: Music Player Daemon.
- **`ncmpcpp`**: Music player client for MPD.
- **`ncmpcpp-ueberzug`**: Displays album art in ncmpcpp.
- **`Bspwm`**: Window manager.
- **`Sxhkd`**: Keybindings manager.
- **`Nerd Fonts`**: Fonts for customization.
- **`Feather Fonts`**: Icon fonts for customization.
- **`Cava`**: Audio visualizer.
- **`Picom`**: Compositor (fork: [picom-jonaburg-git](https://aur.archlinux.org/packages/picom-jonaburg-git)).
- **`playerctl`**: Multimedia keybindings.
- **`Pactl`**: Volume control.
- **`pavucontrol`**: GUI for audio control.
- **`i3lock-fancy`**: Session locker.
- **`Gnome-screenshot`**: Screenshot tool.
- **`rofi-bluetooth`**: Bluetooth menu for Rofi.
- **`ranger`**: File manager.
- **`Zathura`**: PDF and EPUB reader.
- **`Ueberzug`**: Image preview in terminal.

---

## Icon Fonts

- **`Hack Nerd Fonts`**
- **`Feather Fonts`**

---

## Fonts

- **`Sarasa Gothic`**
- **`Hack Nerd Font`**
- **`Unifont`**
- **`Terminus`**
- **`Waffle`**

---

## Installation

Follow these steps to install and configure the dotfiles:

1. Clone the repository:
    ```
    git clone https://github.com/Ckabos/nordotfiles.git
    cd nordotfiles
    ```
    
2. Copy the configuration files to the appropriate directories:
    ```
    cp -r polybar ~/.config/
    cp -r dunst ~/.config/
    cp -r mpd ~/.config/
    cp -r ncmpcpp ~/.config/
    cp -r picom ~/.config/
    cp -r ranger ~/.config/
    cp -r bspwm ~/.config/
    cp -r zathura ~/.config/
    cp -r rofi ~/.config/
    cp -r alacritty ~/.config/
    cp -r cava ~/.config/
    cp -r sxhkd ~/.config/
    ```
3. Install the dbus-python library (if you encounter the error ModuleNotFoundError: No module named 'dbus.mainloop.glib'
    ```
    pip3 install dbus-python
    ```
