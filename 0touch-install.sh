#!/bin/bash

# Install necessary software
sudo dnf install picom sxhkd bspwm lightdm lightdm-gtk xdotool rofi dunst timeshift alacritty pavucontrol florence nm-connection-editor nemo nemo-fileroller nemo-compare nemo-image-converter kde-connect xorg-x11-server-Xorg gnome-calendar gnome-clocks gnome-calculator gnome-system-monitor flameshot baobab gpaste cargo rust cmake libdbusmenu-devel atk-devel pango-devel cairo-gobject-devel rust-gdk-sys-devel libdbusmenu-gtk3-devel

# Create directories
mkdir ~/Documents ~/Downloads ~/Images ~/Video ~/.config/bspwm ~/.config/sxhkd ~/.config/eww

# Enable LightDM
sudo systemctl enable lightdm.service
sudo systemctl set-default graphical.target

# Build eww
cd ~/.config/0touch/configs/eww
git clone https://github.com/elkowar/eww
cd eww
cargo build --release --no-default-features --features x11
cd target/release
chmod +x ./eww
cd ~

# Copy config files to the system
cp ~/.config/0touch/configs/bspwm/bspwmrc ~/.config/bspwm/
cp ~/.config/0touch/configs/sxhkd/sxhkdrc ~/.config/sxhkd/
cp -r ~/.config/0touch/configs/eww/eww/examples/eww-bar/* ~/.config/eww/
# Make bspwmrc executable
chmod +x ~/.config/bspwm/bspwmrc

# Notify user that script is done
echo "Installation finished, please reboot to continue"
