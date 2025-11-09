#Install all dependencies
echo "Installing all dependencies"
sudo pacman -Syu --needed hyprland hyprlock hyprpaper hypridle waybar ly alacritty kitty wofi rofi yazi git telegram-desktop discord firefox

#Installing Paru
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
cd ..
rm -rf paru

#Installing Paru dependend packages
paru -S --needed hyprnotify elecwhat 

#Copy config files
sh copyConfig.sh