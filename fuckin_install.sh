#!/usr/bin/env sh

# Install GAY
git clone https://aur.archlinux.org/yay-bin
cd yay-bin
makepkg -si

# Install packages
yay -S hyprland-bin polkit-gnome ffmpeg neovim viewnior       \
rofi pavucontrol thunar starship wl-clipboard wf-recorder     \
swaybg grimblast-git ffmpegthumbnailer tumbler playerctl      \
noise-suppression-for-voice thunar-archive-plugin kitty       \
waybar-hyprland wlogout swaylock-effects sddm-git pamixer     \
nwg-look-bin nordic-theme papirus-icon-theme dunst

# Install configs
cp -r $HOME/.dotfiles/dotconfig/* $HOME/.config/

# Install NVIDIA Drivers cause fuck me :)
yay -S nvidia-dkms nvidia-utils lib32-nvidia-utils nvidia-settings vulkan-icd-loader lib32-vulkan-icd-loader

# Install the wrapper scripts & change hyprland session to launch from Scripts :)
sudo cp $HOME/.dotfiles/scripts/hypr_launch /usr/local/bin/hypr_launch
sudo rm -rf /usr/share/wayland-sessions/hyprland.desktop
sudo cp $HOME/.dotfiles/etc/hyprland.desktop /usr/share/wayland-sessions/hyprland.desktop

echo "All done, now fuck off"
exit
