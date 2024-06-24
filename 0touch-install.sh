#!/bin/bash

# Install necessary software
sudo dnf install picom sxhkd bspwm lightdm lightdm-gtk xdotool rofi dunst timeshift alacritty pavucontrol florence nm-connection-editor nemo nemo-fileroller nemo-compare nemo-image-converter kde-connect xorg-x11-server-Xorg gnome-calendar gnome-clocks gnome-calculator gnome-system-monitor flameshot baobab gpaste &

# Create directories
mkdir Documents Downloads Images Video ~/.config/bspwm ~/.config/sxhkd

# Enable LightDM
sudo systemctl enable lightdm.service
sudo systemctl set-default graphical.target

# Copy bspwm and sxhkd files
cp ~/.config/0touch/configs/bspwm/bspwmrc ~/.config/bspwm/
cp ~/.config/0touch/configs/sxhkd/sxhkdrc ~/.config/sxhkd/

# Notify user that script is done
echo "Installation finished, please reboot to continue"
